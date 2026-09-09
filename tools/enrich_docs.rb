#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

# Enriches the generated 0.2 API with ExDoc metadata. Operation descriptions
# come from the public OpenAPI contract; domain context and lifecycle guidance
# live in Inttegro.Docs.

ROOT = File.expand_path("..", __dir__)
GENERATED_PATH = File.join(ROOT, "lib/inttegro/generated.ex")
RESOURCES_PATH = File.join(ROOT, "lib/inttegro/resources.ex")
OPENAPI_PATH = ENV.fetch(
  "INTTEGRO_OPENAPI",
  File.expand_path("../../openapi/commerce.yml", ROOT)
)

def module_blocks(source, pattern)
  starts = source.enum_for(:scan, pattern).map do
    [Regexp.last_match.begin(0), Regexp.last_match(1)]
  end

  starts.each_with_index.map do |(offset, name), index|
    finish = index + 1 < starts.length ? starts[index + 1][0] : source.length
    [name, source[offset...finish]]
  end
end

def generated_kind(block)
  return :enum if block.include?("@values")
  return :union unless block.include?("defstruct")
  return :request if block.match?(/@moduledoc "Typed Inttegro request parameters\."/)

  :domain
end

def enrich_generated(block)
  return block if block.include?("@moduledoc Inttegro.Docs.")

  kind = generated_kind(block)

  enriched = block.sub(
    /^  @moduledoc .+$/,
    "  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :#{kind})"
  )

  enriched = enriched.sub(
    /^  @type t ::/,
    "  @typedoc Inttegro.Docs.type_doc(__MODULE__, :#{kind})\n  @type t ::"
  )

  enriched = enriched.gsub(
    /^  @spec new!\(/,
    "  @doc Inttegro.Docs.constructor_doc(__MODULE__)\n  @spec new!("
  )

  enriched = enriched.gsub(
    /^  @spec values\(/,
    "  @doc Inttegro.Docs.enum_values_doc(__MODULE__)\n  @spec values("
  )

  enriched.gsub(
    /^  @spec (from_map|to_map|encode|decode)\(/,
    "  @doc false\n  @spec \\1("
  )
end

def operation_description(openapi, path)
  operation = openapi.fetch("paths").fetch(path).values.find do |candidate|
    candidate.is_a?(Hash) && candidate.key?("operationId")
  end

  abort("No documented OpenAPI operation for #{path}") unless operation

  description = operation["description"] || operation["summary"]
  description.to_s.strip.gsub(/\s+/, " ")
end

def operation_doc(
  module_name,
  function_name,
  path,
  request_type,
  return_type,
  description,
  constructible
)
  parameters = ["* `client` — an authenticated `Inttegro.Client`."]
  if request_type
    parameters << "* `request` — a `#{request_type}` containing the operation input."
    parameters << "* `options` — request options such as `:idempotency_key` and additional `:headers`."
  elsif function_name != "open"
    parameters << "* `options` — request options such as `:idempotency_key` and additional `:headers`."
  end

  invocation = if request_type && constructible
                 <<~EXAMPLE.rstrip
                   request = #{request_type}.new!(request_attributes)

                   case #{module_name}.#{function_name}(client, request) do
                     {:ok, result} -> result
                     {:error, error} -> {:error, error}
                   end
                 EXAMPLE
               elsif request_type
                 <<~EXAMPLE.rstrip
                   # Build one of the concrete request variants listed by #{request_type}.t/0.
                   request = concrete_request

                   case #{module_name}.#{function_name}(client, request) do
                     {:ok, result} -> result
                     {:error, error} -> {:error, error}
                   end
                 EXAMPLE
               elsif function_name == "open"
                 "#{module_name}.#{function_name}(client, request)"
               else
                 "#{module_name}.#{function_name}(client)"
               end

  result = return_type || "the documented result"

  <<~DOC.rstrip
    #{description}

    ## Parameters

    #{parameters.join("\n")}

    ## Returns

    Returns `{:ok, #{result}}` when Inttegro accepts and decodes the operation. Returns
    `{:error, exception}` for API, transport, or decoding failures. A successful API response can
    still describe an asynchronous resource that has not reached its terminal state.

    ## Example

        #{invocation.gsub("\n", "\n    ")}
  DOC
end

openapi = YAML.safe_load(File.read(OPENAPI_PATH), aliases: true)

generated = File.read(GENERATED_PATH)
generated_header = generated[/\A.*?(?=^defmodule Inttegro\.)/m]
generated_blocks = module_blocks(generated, /^defmodule (Inttegro\.[A-Za-z0-9_.]+) do$/)
constructible_modules = generated_blocks.to_h do |name, block|
  [name, block.match?(/^  def new!\(/)]
end
constructible_modules["Inttegro.Files.CreateRequest"] = true
constructible_modules["Inttegro.FileLinks.OpenRequest"] = true
constructible_modules["Inttegro.UploadRequests.FulfillRequest"] = true

generated_output = generated_header + generated_blocks.map do |name, block|
  name == "Inttegro.Codec" ? block : enrich_generated(block)
end.join

File.write(GENERATED_PATH, generated_output)

resources = File.read(RESOURCES_PATH)
resource_header = resources[/\A.*?(?=^defmodule Inttegro\.)/m]
resource_blocks = module_blocks(resources, /^defmodule (Inttegro\.[A-Za-z0-9_]+) do$/)

resource_output = resource_header + resource_blocks.map do |module_name, block|
  enriched = block.gsub(/^  @doc \"\"\".*?(?=^  @spec )/m, "")
  enriched = enriched.sub(
    /^  @moduledoc .+$/,
    "  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)"
  )

  specs = enriched.enum_for(:scan, /^  @spec ([a-z0-9_!?]+)\(/).map do
    [Regexp.last_match.begin(0), Regexp.last_match(1)]
  end

  specs.reverse_each do |offset, function_name|
    following = enriched[offset..]
    next_spec = following.index(/^  @spec /, 1) || following.length
    function_chunk = following[0...next_spec]
    path = function_chunk[/"(\/[a-z0-9_\/-]+)"/, 1]
    abort("No API path found for #{module_name}.#{function_name}") unless path

    spec_only = function_chunk[/\A.*?(?=^  def #{Regexp.escape(function_name)}\()/m]
    arguments = spec_only.to_s.split("::", 2).first
    type_names = arguments.scan(/Inttegro\.[A-Za-z0-9_.]+\.t\(\)/)
    request_type = type_names.find { |type| type != "Inttegro.Client.t()" }&.delete_suffix(".t()")
    return_type = spec_only.to_s[/\{:ok,\s*(Inttegro\.[A-Za-z0-9_.]+\.t\(\))\}/m, 1]
    description = operation_description(openapi, path)
    doc = operation_doc(
      module_name,
      function_name,
      path,
      request_type,
      return_type,
      description,
      constructible_modules.fetch(request_type, false)
    )
    attribute = if module_name == "Inttegro.FinancialAccounts"
                  "  @doc Inttegro.Docs.operation_doc(__MODULE__, :#{function_name})\n"
                else
                  indented_doc = (doc + "\n").lines.map { |line| "  #{line}" }.join
                  "  @doc \"\"\"\n#{indented_doc}  \"\"\"\n"
                end
    enriched.insert(offset, attribute)
  end

  enriched
end.join

File.write(RESOURCES_PATH, resource_output)
puts "Documented #{generated_blocks.length - 1} generated modules and 118 resource operations."
