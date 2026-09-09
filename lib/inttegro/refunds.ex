# Typed Inttegro API resource.

defmodule Inttegro.Refunds do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Starts a refund for one or more paid order line items. Refund processing is asynchronous: a successful request returns the new refund in `pending` status. Retry an uncertain request with the same URL, idempotency key, and body.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Refunds.CreateRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Refunds.Refund.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Refunds.CreateRequest.new!(request_attributes)

      case Inttegro.Refunds.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.Refunds.CreateRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/create",
             Inttegro.Codec.encode(request),
             options,
             "refunds.create",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @doc """
  Cancels a pending refund before processing claims it. Cancellation releases the merchant balance hold and restores the refundable capacity reserved against its order line items. Repeating cancellation returns the same canceled refund.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Refunds.CancelRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Refunds.Refund.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Refunds.CancelRequest.new!(request_attributes)

      case Inttegro.Refunds.cancel(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec cancel(Client.t(), Inttegro.Refunds.CancelRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/cancel",
             Inttegro.Codec.encode(request),
             options,
             "refunds.cancel",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @doc """
  Returns the current lifecycle state and amounts for one refund.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Refunds.LookupRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Refunds.Refund.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Refunds.LookupRequest.new!(request_attributes)

      case Inttegro.Refunds.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Refunds.LookupRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/lookup",
             Inttegro.Codec.encode(request),
             options,
             "refunds.lookup",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @doc """
  Returns refunds in pages of the requested size. Page numbering starts at 1.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Refunds.PageRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Refunds.Page.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Refunds.PageRequest.new!(request_attributes)

      case Inttegro.Refunds.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Refunds.PageRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Page.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/page",
             Inttegro.Codec.encode(request),
             options,
             "refunds.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Refunds.Page.from_map(value)}
    end
  end
end
