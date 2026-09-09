# Typed Inttegro API resource.

defmodule Inttegro.FileLinks do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Creates a revocable public capability URL for an existing file.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileLinks.CreateFileLinkRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.FileLinks.FileLinkCreation.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileLinks.CreateFileLinkRequest.new!(request_attributes)

      case Inttegro.FileLinks.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.FileLinks.CreateFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLinkCreation.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/create",
             Inttegro.Codec.encode(request),
             options,
             "file_links.create",
             nil,
             true
           ) do
      {:ok, Inttegro.FileLinks.FileLinkCreation.from_map(value)}
    end
  end

  @doc """
  Retrieves a file link without exposing token material.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileLinks.LookupFileLinkRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.FileLinks.FileLink.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileLinks.LookupFileLinkRequest.new!(request_attributes)

      case Inttegro.FileLinks.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.FileLinks.LookupFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLink.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/lookup",
             Inttegro.Codec.encode(request),
             options,
             "file_links.lookup",
             "file_link",
             true
           ) do
      {:ok, Inttegro.FileLinks.FileLink.from_map(value)}
    end
  end

  @doc """
  Lists file links for the authorized application, optionally filtered by file or status.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileLinks.PageFileLinksRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.FileLinks.FileLinkPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileLinks.PageFileLinksRequest.new!(request_attributes)

      case Inttegro.FileLinks.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.FileLinks.PageFileLinksRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLinkPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/page",
             Inttegro.Codec.encode(request),
             options,
             "file_links.page",
             "page",
             true
           ) do
      {:ok, Inttegro.FileLinks.FileLinkPage.from_map(value)}
    end
  end

  @doc """
  Revokes an active file link so its public capability URL can no longer serve the file.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileLinks.RevokeFileLinkRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.FileLinks.FileLink.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileLinks.RevokeFileLinkRequest.new!(request_attributes)

      case Inttegro.FileLinks.revoke(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec revoke(Client.t(), Inttegro.FileLinks.RevokeFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLink.t()} | {:error, Exception.t()}
  def revoke(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/revoke",
             Inttegro.Codec.encode(request),
             options,
             "file_links.revoke",
             "file_link",
             true
           ) do
      {:ok, Inttegro.FileLinks.FileLink.from_map(value)}
    end
  end

  @doc """
  Opens a token-protected public file link. Depending on delivery policy, this either streams bytes or redirects to a short-lived provider URL.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileLinks.OpenRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Files.Download.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileLinks.OpenRequest.new!(request_attributes)

      case Inttegro.FileLinks.open(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec open(Client.t(), Inttegro.FileLinks.OpenRequest.t()) ::
          {:ok, Inttegro.Files.Download.t()} | {:error, Exception.t()}
  def open(client, request) do
    with {:ok, value} <-
           Client.open_file_link(client, "/file_links/open", request, "file_links.open") do
      {:ok, value}
    end
  end
end
