defmodule Inttegro do
  @moduledoc """
  The official server-side Elixir SDK for the Inttegro commerce platform.

  Inttegro provides APIs for orders and payments, customers, products and prices, purchase intents,
  payment methods, balances, payouts, refunds, messaging, files, and application administration.
  This package gives each domain a focused module and decodes responses into namespaced structs.

  ## Architecture

  The SDK has four layers:

  * `Inttegro.Client` owns the secret key, HTTP transport, and application-provided observability
    callbacks. It is a plain struct and does not need its own process.
  * Resource modules such as `Inttegro.Orders`, `Inttegro.Customers`, and `Inttegro.Refunds` expose
    API operations and return `{:ok, result}` or `{:error, exception}`.
  * Domain modules such as `Inttegro.Orders.Order` and `Inttegro.Refunds.Refund` describe decoded
    resources and request values within the domain that owns them.
  * `Inttegro.Errors` and `Inttegro.Telemetry` contain cross-cutting failure and observability values.

  HTTP envelopes and wire-codec helpers remain internal so callers work with domain values rather
  than transport details.

  ## First request

      client = Inttegro.Client.new!(System.fetch_env!("INTTEGRO_API_KEY"))
      request = Inttegro.Orders.LookupRequest.new!(order_id: "or_...")

      case Inttegro.Orders.lookup(client, request) do
        {:ok, order} ->
          IO.inspect(order.status, label: "order status")

        {:error, %Inttegro.Errors.APIError{} = error} ->
          IO.warn("Inttegro rejected the request: \#{error.code}")

        {:error, %Inttegro.Errors.TransportError{} = error} ->
          IO.warn("Inttegro could not be reached: \#{Exception.message(error)}")
      end

  Keep the secret key on the server. Every mutation should carry a stable idempotency key, and a
  browser redirect must not be treated as authoritative proof of payment. The Getting started and
  Orders and payments guides cover a complete integration.

  ## Resource APIs

  * Commerce: `Inttegro.Orders`, `Inttegro.Products`, `Inttegro.Prices`,
    `Inttegro.PurchaseIntents`, and `Inttegro.Customers`.
  * Money movement: `Inttegro.PaymentMethods`, `Inttegro.Balances`,
    `Inttegro.BalanceTransactions`, `Inttegro.Payouts`, and `Inttegro.Refunds`.
  * Communication and content: `Inttegro.Chimes`, `Inttegro.Broadcasts`,
    `Inttegro.MessageTemplates`, `Inttegro.Files`, `Inttegro.FileLinks`, and
    `Inttegro.UploadRequests`.
  * Platform administration: `Inttegro.Apps`, `Inttegro.Keys`,
    `Inttegro.FinancialAccounts`, and `Inttegro.Specifications`.
  """
end
