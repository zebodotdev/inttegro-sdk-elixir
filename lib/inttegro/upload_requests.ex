# Typed Inttegro API resource.

defmodule Inttegro.UploadRequests do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Creates a delegated upload request that can collect one file from a user or customer under purpose, size, format, expiry, and attempt constraints.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.CreateUploadRequestRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadRequest.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.UploadRequests.CreateUploadRequestRequest.new!(request_attributes)

      case Inttegro.UploadRequests.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.UploadRequests.CreateUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/create",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.create",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @doc """
  Retrieves a delegated upload request for the authorized application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.LookupUploadRequestRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadRequest.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.UploadRequests.LookupUploadRequestRequest.new!(request_attributes)

      case Inttegro.UploadRequests.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.UploadRequests.LookupUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/lookup",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.lookup",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @doc """
  Lists delegated upload requests for the authorized application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.PageUploadRequestsRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadRequestPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.UploadRequests.PageUploadRequestsRequest.new!(request_attributes)

      case Inttegro.UploadRequests.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.UploadRequests.PageUploadRequestsRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequestPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/page",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.page",
             "page",
             true
           ) do
      {:ok, Inttegro.UploadRequests.UploadRequestPage.from_map(value)}
    end
  end

  @doc """
  Cancels an active delegated upload request so its public upload URL can no longer accept files.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.CancelUploadRequestRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadRequest.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.UploadRequests.CancelUploadRequestRequest.new!(request_attributes)

      case Inttegro.UploadRequests.cancel(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec cancel(Client.t(), Inttegro.UploadRequests.CancelUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/cancel",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.cancel",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @doc """
  Records a manual approval or rejection for the latest submitted upload attempt.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.ReviewUploadRequestAttemptRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadRequest.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      # Build one of the concrete request variants listed by Inttegro.UploadRequests.ReviewUploadRequestAttemptRequest.t/0.
      request = concrete_request

      case Inttegro.UploadRequests.review(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec review(
          Client.t(),
          Inttegro.UploadRequests.ReviewUploadRequestAttemptRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
  def review(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/review",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.review",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @doc """
  Public capability endpoint used by a delegated uploader to submit the requested file. This request does not use API-key authentication.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.UploadRequests.FulfillRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.UploadRequests.UploadFulfillment.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.UploadRequests.FulfillRequest.new!(request_attributes)

      case Inttegro.UploadRequests.fulfill(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec fulfill(Client.t(), Inttegro.UploadRequests.FulfillRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadFulfillment.t()} | {:error, Exception.t()}
  def fulfill(client, request, options \\ []) do
    with {:ok, value} <-
           Client.fulfill_upload(
             client,
             "/upload_requests/upload",
             request,
             options,
             "upload_requests.fulfill"
           ) do
      {:ok, Inttegro.UploadRequests.UploadFulfillment.from_map(value)}
    end
  end
end
