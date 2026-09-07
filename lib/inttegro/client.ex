defmodule Inttegro.RequestOptions do
  @moduledoc "Per-request idempotency and header options."
  defstruct idempotency_key: nil, headers: []
  @type t :: %__MODULE__{idempotency_key: String.t() | nil, headers: [{String.t(), String.t()}]}
end

defmodule Inttegro.FileDownload do
  @moduledoc "Downloaded Inttegro file bytes and metadata."
  defstruct [:bytes, :content_type, :filename]

  @type t :: %__MODULE__{
          bytes: binary(),
          content_type: String.t() | nil,
          filename: String.t() | nil
        }
end

defmodule Inttegro.CreateFileRequest do
  @moduledoc "Parameters for uploading a file."
  @enforce_keys [:file_name, :bytes, :purpose]
  defstruct [:file_name, :bytes, :purpose, :title, :custom_data]

  @type t :: %__MODULE__{
          file_name: String.t(),
          bytes: binary(),
          purpose: String.t(),
          title: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil
        }
end

defmodule Inttegro.FulfillUploadRequest do
  @moduledoc "Parameters for fulfilling an upload request."
  @enforce_keys [:id, :token, :file_name, :bytes]
  defstruct [:id, :token, :file_name, :bytes]

  @type t :: %__MODULE__{
          id: String.t(),
          token: String.t(),
          file_name: String.t(),
          bytes: binary()
        }
end

defmodule Inttegro.OpenFileLinkRequest do
  @moduledoc "Parameters for opening a signed file link."
  @enforce_keys [:id, :token]
  defstruct [:id, :token]
  @type t :: %__MODULE__{id: String.t(), token: String.t()}
end

defmodule Inttegro.SDKReportContext do
  @moduledoc "Identifies the SDK that produced an error report."
  @enforce_keys [:language, :version]
  defstruct [:language, :version]
end

defimpl Jason.Encoder, for: Inttegro.SDKReportContext do
  def encode(value, options) do
    Jason.Encode.map(%{"language" => value.language, "version" => value.version}, options)
  end
end

defmodule Inttegro.HTTPReportContext do
  @moduledoc "Privacy-safe HTTP metadata included in an error report."
  @enforce_keys [:method, :server_address, :duration_ms]
  defstruct [:method, :route, :server_address, :status_code, :request_id, :duration_ms]
end

defimpl Jason.Encoder, for: Inttegro.HTTPReportContext do
  def encode(value, options) do
    Jason.Encode.map(
      %{
        "method" => value.method,
        "route" => value.route,
        "serverAddress" => value.server_address,
        "statusCode" => value.status_code,
        "requestId" => value.request_id,
        "durationMs" => value.duration_ms
      },
      options
    )
  end
end

defmodule Inttegro.APIErrorReportContext do
  @moduledoc "Structured Inttegro API error details included in an error report."
  defstruct [:type, :code, :fix_code]
end

defimpl Jason.Encoder, for: Inttegro.APIErrorReportContext do
  def encode(value, options) do
    Jason.Encode.map(
      %{"type" => value.type, "code" => value.code, "fixCode" => value.fix_code},
      options
    )
  end
end

defmodule Inttegro.TraceReportContext do
  @moduledoc "Optional distributed-trace identifiers attached by an integration."
  @enforce_keys [:trace_id, :span_id]
  defstruct [:trace_id, :span_id]
end

defimpl Jason.Encoder, for: Inttegro.TraceReportContext do
  def encode(value, options) do
    Jason.Encode.map(%{"traceId" => value.trace_id, "spanId" => value.span_id}, options)
  end
end

defmodule Inttegro.ErrorReport do
  @moduledoc "A ready-to-encode, privacy-safe report delivered to the configured error reporter."
  @enforce_keys [
    :schema_version,
    :event_id,
    :occurred_at,
    :severity,
    :category,
    :operation,
    :sdk,
    :http,
    :exception_type,
    :fingerprint
  ]
  defstruct [
    :schema_version,
    :event_id,
    :occurred_at,
    :severity,
    :category,
    :operation,
    :sdk,
    :http,
    :api_error,
    :trace,
    :exception_type,
    :fingerprint
  ]
end

defimpl Jason.Encoder, for: Inttegro.ErrorReport do
  def encode(value, options) do
    Jason.Encode.map(
      %{
        "schemaVersion" => value.schema_version,
        "eventId" => value.event_id,
        "occurredAt" => value.occurred_at,
        "severity" => value.severity,
        "category" => value.category,
        "operation" => value.operation,
        "sdk" => value.sdk,
        "http" => value.http,
        "apiError" => value.api_error,
        "trace" => value.trace,
        "exceptionType" => value.exception_type,
        "fingerprint" => value.fingerprint
      },
      options
    )
  end
end

defmodule Inttegro.ApiError do
  @moduledoc "An unsuccessful response returned by the Inttegro API."
  defexception [:status, :code, :type, :fix_code, :request_id, :report]
  @impl true
  def message(error),
    do: "Inttegro API request failed with status #{error.status} (#{error.code})"
end

defmodule Inttegro.TransportError do
  @moduledoc "A failure to communicate with the Inttegro API."
  defexception [:reason]
  @impl true
  def message(error), do: "Inttegro transport failed: #{inspect(error.reason)}"
end

defmodule Inttegro.DecodingError do
  @moduledoc "A response that could not be decoded into its documented domain type."
  defexception [:reason]
  @impl true
  def message(error), do: "Inttegro response could not be decoded: #{inspect(error.reason)}"
end

defmodule Inttegro.Client do
  @moduledoc "The Inttegro server API client."
  @version "0.1.0"
  @enforce_keys [:api_key, :base_url, :http]
  defstruct [
    :api_key,
    :base_url,
    :http,
    :telemetry,
    :error_reporter,
    error_reporting_policy: :unexpected
  ]

  @type t :: %__MODULE__{}

  @spec new!(String.t(), keyword()) :: t()
  def new!(api_key, options \\ []) when is_binary(api_key) do
    if String.trim(api_key) == "", do: raise(ArgumentError, "api key cannot be empty")

    base_url =
      Keyword.get(options, :base_url, "https://api.inttegro.com") |> String.trim_trailing("/")

    %__MODULE__{
      api_key: api_key,
      base_url: base_url,
      http: Keyword.get_lazy(options, :http, fn -> Req.new(base_url: base_url, retry: false) end),
      telemetry: options[:telemetry],
      error_reporter: options[:error_reporter],
      error_reporting_policy: Keyword.get(options, :error_reporting_policy, :unexpected)
    }
  end

  @doc false
  def request(client, method, path, body, options, operation, field, authenticated) do
    started = System.monotonic_time(:millisecond)
    headers = headers(client, options, authenticated)
    record(client, "inttegro.request.prepared", operation, method, path, nil, started)

    case Req.request(client.http,
           method: method |> String.downcase() |> String.to_existing_atom(),
           url: path,
           json: body,
           headers: headers
         ) do
      {:ok, %{status: status, body: response_body, headers: response_headers}}
      when status in 200..299 ->
        record(client, "inttegro.response.received", operation, method, path, status, started)

        case select(response_body, field) do
          {:ok, _value} = result ->
            record(client, "inttegro.response.decoded", operation, method, path, status, started)
            result

          {:error, %Inttegro.DecodingError{}} = result ->
            _ =
              finish_failure(
                client,
                operation,
                method,
                path,
                started,
                status,
                header(response_headers, "x-request-id"),
                nil,
                "decoding",
                nil
              )

            result
        end

      {:ok, %{status: status, body: response_body, headers: response_headers}} ->
        record(client, "inttegro.response.received", operation, method, path, status, started)

        detail =
          if is_map(response_body), do: Map.get(response_body, "error", response_body), else: %{}

        code = Map.get(detail, "code", "api_error")
        type = Map.get(detail, "type")
        fix_code = Map.get(detail, "fix_code")
        request_id = header(response_headers, "x-request-id")

        report =
          finish_failure(
            client,
            operation,
            method,
            path,
            started,
            status,
            request_id,
            code,
            type || "api",
            fix_code
          )

        {:error,
         %Inttegro.ApiError{
           status: status,
           code: code,
           type: type,
           fix_code: fix_code,
           request_id: request_id,
           report: report
         }}

      {:error, reason} ->
        _ =
          finish_failure(
            client,
            operation,
            method,
            path,
            started,
            nil,
            nil,
            nil,
            "transport",
            nil
          )

        {:error, %Inttegro.TransportError{reason: reason}}
    end
  end

  @doc false
  def download(client, method, path, body, options, operation, authenticated) do
    started = System.monotonic_time(:millisecond)
    record(client, "inttegro.request.prepared", operation, method, path, nil, started)

    case Req.request(client.http,
           method: method |> String.downcase() |> String.to_existing_atom(),
           url: path,
           json: body,
           headers: headers(client, options, authenticated),
           decode_body: false
         ) do
      {:ok, %{status: status, body: bytes, headers: response_headers}} when status in 200..299 ->
        record(client, "inttegro.response.received", operation, method, path, status, started)

        {:ok,
         %Inttegro.FileDownload{
           bytes: bytes,
           content_type: header(response_headers, "content-type")
         }}

      {:ok, %{status: status, headers: response_headers}} ->
        record(client, "inttegro.response.received", operation, method, path, status, started)
        request_id = header(response_headers, "x-request-id")

        report =
          finish_failure(
            client,
            operation,
            method,
            path,
            started,
            status,
            request_id,
            "download_failed",
            "api",
            nil
          )

        {:error,
         %Inttegro.ApiError{
           status: status,
           code: "download_failed",
           request_id: request_id,
           report: report
         }}

      {:error, reason} ->
        _ =
          finish_failure(
            client,
            operation,
            method,
            path,
            started,
            nil,
            nil,
            nil,
            "transport",
            nil
          )

        {:error, %Inttegro.TransportError{reason: reason}}
    end
  end

  @doc false
  def upload_file(client, path, request, options, operation, field) do
    {body, content_type} =
      multipart(request.file_name, request.bytes, %{
        "purpose" => request.purpose,
        "title" => request.title,
        "custom_data" => request.custom_data && Jason.encode!(request.custom_data)
      })

    upload(client, path, body, content_type, [], options, operation, field, true)
  end

  @doc false
  def fulfill_upload(client, path, request, options, operation) do
    {body, content_type} = multipart(request.file_name, request.bytes, %{})

    upload(
      client,
      path,
      body,
      content_type,
      [id: request.id, token: request.token],
      options,
      operation,
      nil,
      false
    )
  end

  @doc false
  def open_file_link(client, path, request, operation) do
    started = System.monotonic_time(:millisecond)
    record(client, "inttegro.request.prepared", operation, "GET", path, nil, started)

    case Req.get(client.http,
           url: path,
           params: [id: request.id, token: request.token],
           headers: [{"user-agent", "inttegro-elixir/#{@version}"}],
           decode_body: false
         ) do
      {:ok, %{status: status, body: bytes, headers: response_headers}} when status in 200..299 ->
        record(client, "inttegro.response.received", operation, "GET", path, status, started)

        {:ok,
         %Inttegro.FileDownload{
           bytes: bytes,
           content_type: header(response_headers, "content-type")
         }}

      {:ok, %{status: status, headers: response_headers}} ->
        record(client, "inttegro.response.received", operation, "GET", path, status, started)
        request_id = header(response_headers, "x-request-id")

        report =
          finish_failure(
            client,
            operation,
            "GET",
            path,
            started,
            status,
            request_id,
            "file_link_failed",
            "api",
            nil
          )

        {:error,
         %Inttegro.ApiError{
           status: status,
           code: "file_link_failed",
           request_id: request_id,
           report: report
         }}

      {:error, reason} ->
        _ =
          finish_failure(
            client,
            operation,
            "GET",
            path,
            started,
            nil,
            nil,
            nil,
            "transport",
            nil
          )

        {:error, %Inttegro.TransportError{reason: reason}}
    end
  end

  defp upload(client, path, body, content_type, params, options, operation, field, authenticated) do
    started = System.monotonic_time(:millisecond)
    record(client, "inttegro.request.prepared", operation, "POST", path, nil, started)

    case Req.post(client.http,
           url: path,
           params: params,
           body: body,
           headers: [{"content-type", content_type} | headers(client, options, authenticated)]
         ) do
      {:ok, %{status: status, body: response_body, headers: response_headers}}
      when status in 200..299 ->
        record(client, "inttegro.response.received", operation, "POST", path, status, started)

        case select(response_body, field) do
          {:ok, _value} = result ->
            record(client, "inttegro.response.decoded", operation, "POST", path, status, started)
            result

          {:error, %Inttegro.DecodingError{}} = result ->
            _ =
              finish_failure(
                client,
                operation,
                "POST",
                path,
                started,
                status,
                header(response_headers, "x-request-id"),
                nil,
                "decoding",
                nil
              )

            result
        end

      {:ok, %{status: status, headers: response_headers}} ->
        record(client, "inttegro.response.received", operation, "POST", path, status, started)
        request_id = header(response_headers, "x-request-id")

        report =
          finish_failure(
            client,
            operation,
            "POST",
            path,
            started,
            status,
            request_id,
            "upload_failed",
            "api",
            nil
          )

        {:error,
         %Inttegro.ApiError{
           status: status,
           code: "upload_failed",
           request_id: request_id,
           report: report
         }}

      {:error, reason} ->
        _ =
          finish_failure(
            client,
            operation,
            "POST",
            path,
            started,
            nil,
            nil,
            nil,
            "transport",
            nil
          )

        {:error, %Inttegro.TransportError{reason: reason}}
    end
  end

  defp select(value, nil), do: {:ok, value}

  defp select(value, field) when is_map(value) do
    case Map.fetch(value, field) do
      {:ok, selected} -> {:ok, selected}
      :error -> {:error, %Inttegro.DecodingError{reason: "missing #{field} in Inttegro response"}}
    end
  end

  defp headers(client, options, authenticated) do
    options = struct(Inttegro.RequestOptions, options)
    base = [{"user-agent", "inttegro-elixir/#{@version}"} | options.headers]

    base =
      if authenticated, do: [{"authorization", "Bearer #{client.api_key}"} | base], else: base

    if options.idempotency_key,
      do: [{"idempotency-key", options.idempotency_key} | base],
      else: base
  end

  defp header(headers, name) do
    headers
    |> Enum.find_value(fn {key, value} ->
      if String.downcase(to_string(key)) == name, do: List.first(List.wrap(value))
    end)
  end

  defp multipart(file_name, bytes, fields) do
    boundary = "inttegro-#{System.unique_integer([:positive])}"

    field_parts =
      fields
      |> Enum.reject(fn {_name, value} -> is_nil(value) end)
      |> Enum.map(fn {name, value} ->
        "--#{boundary}\r\nContent-Disposition: form-data; name=\"#{name}\"\r\n\r\n#{value}\r\n"
      end)

    body =
      IO.iodata_to_binary([
        field_parts,
        "--#{boundary}\r\nContent-Disposition: form-data; name=\"file\"; filename=\"#{file_name}\"\r\nContent-Type: application/octet-stream\r\n\r\n",
        bytes,
        "\r\n--#{boundary}--\r\n"
      ])

    {body, "multipart/form-data; boundary=#{boundary}"}
  end

  defp record(%{telemetry: nil}, _name, _operation, _method, _route, _status, _started), do: :ok

  defp record(client, name, operation, method, route, status, started) do
    try do
      client.telemetry.(%{
        name: name,
        operation: operation,
        method: method,
        route: route,
        status_code: status,
        duration_ms: System.monotonic_time(:millisecond) - started
      })
    rescue
      _ -> :ok
    catch
      _, _ -> :ok
    end
  end

  defp finish_failure(
         client,
         operation,
         method,
         route,
         started,
         status,
         request_id,
         code,
         category,
         fix_code
       ) do
    record(client, "inttegro.request.failed", operation, method, route, status, started)

    if is_nil(client.error_reporter) or
         (client.error_reporting_policy == :unexpected and is_integer(status) and status < 500 and
            category not in ["decoding", "unknown_error"]) do
      nil
    else
      api_error =
        if status,
          do: %Inttegro.APIErrorReportContext{type: category, code: code, fix_code: fix_code}

      report = %Inttegro.ErrorReport{
        schema_version: 1,
        event_id: Integer.to_string(System.unique_integer([:positive, :monotonic])),
        occurred_at: DateTime.utc_now() |> DateTime.to_iso8601(),
        severity: "error",
        category: category,
        operation: operation,
        sdk: %Inttegro.SDKReportContext{language: "elixir", version: @version},
        http: %Inttegro.HTTPReportContext{
          method: String.upcase(method),
          route: route,
          server_address: client.base_url,
          status_code: status,
          request_id: request_id,
          duration_ms: System.monotonic_time(:millisecond) - started
        },
        api_error: api_error,
        trace: nil,
        exception_type: if(status, do: "Inttegro.ApiError", else: "Inttegro.TransportError"),
        fingerprint: "inttegro:elixir:#{operation}:#{category}:#{status || "none"}"
      }

      try do
        client.error_reporter.(report)
      rescue
        _ -> :ok
      catch
        _, _ -> :ok
      end

      report
    end
  end
end
