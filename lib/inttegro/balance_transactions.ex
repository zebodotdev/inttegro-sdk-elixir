# Typed Inttegro API resource.

defmodule Inttegro.BalanceTransactions do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Retrieves one balance transaction by its unique identifier.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.BalanceTransactions.LookupBalanceTransactionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.BalanceTransactions.BalanceTransaction.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.BalanceTransactions.LookupBalanceTransactionRequest.new!(request_attributes)

      case Inttegro.BalanceTransactions.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(
          Client.t(),
          Inttegro.BalanceTransactions.LookupBalanceTransactionRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.BalanceTransactions.BalanceTransaction.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balance_transactions/lookup",
             Inttegro.Codec.encode(request),
             options,
             "balance_transactions.lookup",
             "transaction",
             true
           ) do
      {:ok, Inttegro.BalanceTransactions.BalanceTransaction.from_map(value)}
    end
  end

  @doc """
  Retrieve a paginated list of balance transactions for the authenticated application. Transactions are sorted by created_at in descending order, so page 1 always contains the most recent activity.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.BalanceTransactions.PageBalanceTransactionsRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.BalanceTransactions.BalanceTransactionPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.BalanceTransactions.PageBalanceTransactionsRequest.new!(request_attributes)

      case Inttegro.BalanceTransactions.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(
          Client.t(),
          Inttegro.BalanceTransactions.PageBalanceTransactionsRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.BalanceTransactions.BalanceTransactionPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balance_transactions/page",
             Inttegro.Codec.encode(request),
             options,
             "balance_transactions.page",
             "page",
             true
           ) do
      {:ok, Inttegro.BalanceTransactions.BalanceTransactionPage.from_map(value)}
    end
  end
end
