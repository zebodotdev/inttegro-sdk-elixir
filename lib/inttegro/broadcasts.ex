# Typed Inttegro API resource.

defmodule Inttegro.Broadcasts do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Look up a broadcast

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Broadcasts.LookupRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Broadcasts.Detail.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Broadcasts.LookupRequest.new!(request_attributes)

      case Inttegro.Broadcasts.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Broadcasts.LookupRequest.t(), keyword()) ::
          {:ok, Inttegro.Broadcasts.Detail.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/broadcasts/lookup",
             Inttegro.Codec.encode(request),
             options,
             "broadcasts.lookup",
             "broadcast",
             true
           ) do
      {:ok, Inttegro.Broadcasts.Detail.from_map(value)}
    end
  end

  @doc """
  Cancel a broadcast before execution wins the cancellation race.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Broadcasts.CancelRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Broadcasts.Detail.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Broadcasts.CancelRequest.new!(request_attributes)

      case Inttegro.Broadcasts.cancel(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec cancel(Client.t(), Inttegro.Broadcasts.CancelRequest.t(), keyword()) ::
          {:ok, Inttegro.Broadcasts.Detail.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/broadcasts/cancel",
             Inttegro.Codec.encode(request),
             options,
             "broadcasts.cancel",
             "broadcast",
             true
           ) do
      {:ok, Inttegro.Broadcasts.Detail.from_map(value)}
    end
  end
end
