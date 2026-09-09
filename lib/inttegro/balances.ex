# Typed Inttegro API resource.

defmodule Inttegro.Balances do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Fetch the latest GHS balance snapshot for your application. The response separates payout-eligible funds from funds that are still pending, held back from payout, or assigned to refund activity at the snapshot cutoff.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, the documented result}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      Inttegro.Balances.get(client)
  """
  @spec get(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.Balances.CurrencyBalanceSnapshot.t()}}
          | {:error, Exception.t()}
  def get(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balances",
             %{},
             options,
             "balances.get",
             "balances",
             true
           ) do
      {:ok,
       Map.new(value, fn {key, value} ->
         {key, Inttegro.Balances.CurrencyBalanceSnapshot.from_map(value)}
       end)}
    end
  end
end
