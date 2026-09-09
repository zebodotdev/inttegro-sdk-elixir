# Typed Inttegro API resource.

defmodule Inttegro.Schedules do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Look up a scheduled Chime

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Schedules.LookupRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Schedules.Detail.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Schedules.LookupRequest.new!(request_attributes)

      case Inttegro.Schedules.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Schedules.LookupRequest.t(), keyword()) ::
          {:ok, Inttegro.Schedules.Detail.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/schedules/lookup",
             Inttegro.Codec.encode(request),
             options,
             "schedules.lookup",
             "scheduled_chime",
             true
           ) do
      {:ok, Inttegro.Schedules.Detail.from_map(value)}
    end
  end

  @doc """
  Cancel a schedule before execution wins the cancellation race.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Schedules.CancelRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Schedules.CancelDetail.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Schedules.CancelRequest.new!(request_attributes)

      case Inttegro.Schedules.cancel(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec cancel(Client.t(), Inttegro.Schedules.CancelRequest.t(), keyword()) ::
          {:ok, Inttegro.Schedules.CancelDetail.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/schedules/cancel",
             Inttegro.Codec.encode(request),
             options,
             "schedules.cancel",
             "scheduled_chime",
             true
           ) do
      {:ok, Inttegro.Schedules.CancelDetail.from_map(value)}
    end
  end
end
