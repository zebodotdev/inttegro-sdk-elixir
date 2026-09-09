# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Errors.Error do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:type, :code, :url]
  defstruct message: nil, fix_code: nil, detail: nil, cause: nil, type: nil, code: nil, url: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          message: String.t() | nil,
          fix_code: String.t() | nil,
          detail: String.t() | nil,
          cause: String.t() | nil,
          type: String.t(),
          code: String.t(),
          url: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message: if(is_nil(Map.get(map, "message")), do: nil, else: Map.get(map, "message")),
      fix_code: if(is_nil(Map.get(map, "fix_code")), do: nil, else: Map.get(map, "fix_code")),
      detail: if(is_nil(Map.get(map, "detail")), do: nil, else: Map.get(map, "detail")),
      cause: if(is_nil(Map.get(map, "cause")), do: nil, else: Map.get(map, "cause")),
      type: Map.fetch!(map, "type"),
      code: Map.fetch!(map, "code"),
      url: Map.fetch!(map, "url")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message" => if(is_nil(value.message), do: nil, else: Inttegro.Codec.encode(value.message)),
      "fix_code" =>
        if(is_nil(value.fix_code), do: nil, else: Inttegro.Codec.encode(value.fix_code)),
      "detail" => if(is_nil(value.detail), do: nil, else: Inttegro.Codec.encode(value.detail)),
      "cause" => if(is_nil(value.cause), do: nil, else: Inttegro.Codec.encode(value.cause)),
      "type" => Inttegro.Codec.encode(value.type),
      "code" => Inttegro.Codec.encode(value.code),
      "url" => Inttegro.Codec.encode(value.url)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
