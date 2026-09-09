# Typed Inttegro API resource.

defmodule Inttegro.Files do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Upload a file to Inttegro for the authorized application. The request must be multipart form data and include a binary `file` part plus a `purpose`.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Files.CreateRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.File.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Files.CreateRequest.new!(request_attributes)

      case Inttegro.Files.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.Files.CreateRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.upload_file(client, "/files/create", request, options, "files.create", "file") do
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end

  @doc """
  Retrieves metadata for one file owned by the authorized application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Files.LookupFileRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.File.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Files.LookupFileRequest.new!(request_attributes)

      case Inttegro.Files.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Files.LookupFileRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/lookup",
             Inttegro.Codec.encode(request),
             options,
             "files.lookup",
             "file",
             true
           ) do
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end

  @doc """
  Lists files for the authorized application, optionally filtered by purpose, status, and creation window.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Files.PageFilesRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.FilePage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Files.PageFilesRequest.new!(request_attributes)

      case Inttegro.Files.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Files.PageFilesRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.FilePage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/page",
             Inttegro.Codec.encode(request),
             options,
             "files.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Files.FilePage.from_map(value)}
    end
  end

  @doc """
  Streams original file bytes for a file owned by the authorized application, or returns a 303 redirect to a short-lived signed delivery URL when delivery is redirect.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Files.FileContentsRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.Download.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Files.FileContentsRequest.new!(request_attributes)

      case Inttegro.Files.contents(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec contents(Client.t(), Inttegro.Files.FileContentsRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.Download.t()} | {:error, Exception.t()}
  def contents(client, request, options \\ []) do
    with {:ok, value} <-
           Client.download(
             client,
             "POST",
             "/files/contents",
             Inttegro.Codec.encode(request),
             options,
             "files.contents",
             true
           ) do
      {:ok, value}
    end
  end

  @doc """
  Tombstones a file and schedules backing-object cleanup when allowed by reference policy.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Files.DeleteFileRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.File.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Files.DeleteFileRequest.new!(request_attributes)

      case Inttegro.Files.delete(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec delete(Client.t(), Inttegro.Files.DeleteFileRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
  def delete(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/delete",
             Inttegro.Codec.encode(request),
             options,
             "files.delete",
             "file",
             true
           ) do
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end
end
