# Orders and payments

An Inttegro order is the authoritative record of commercial terms, customer information, payment
state, and invoice or receipt documents. A payment is part of the order lifecycle; a successful API
call or browser redirect is not, by itself, proof that money was received.

## Create a hosted checkout

The example below creates a GHS 50.00 order for a new customer and finalizes it for hosted payment.
Amounts use integer minor units, so `5_000` GHS means GHS 50.00.

```elixir
amount = Inttegro.Money.AmountParams.new!(currency: :ghs, value: 5_000)

line_item =
  Inttegro.Orders.FeeLineItemInput.new!(
    type: :fee,
    fee:
      Inttegro.Orders.FeeDetailsInput.new!(
        label: "Studio plan",
        description: "One month",
        amount: amount
      )
  )

customer =
  Inttegro.Customers.DataInput.new!(
    name: "Akua Mensah",
    email_address: "akua@example.com",
    phone_number: "+233544998605"
  )

checkout =
  Inttegro.Orders.CreateNewCustomerInputCheckoutSettings.new!(
    redirect_url: "https://example.com/orders/complete",
    cancel_url: "https://example.com/cart"
  )

request =
  Inttegro.Orders.CreateNewCustomerInput.new!(
    customer_data: customer,
    line_items: [line_item],
    checkout_settings: checkout,
    finalize: true
  )

{:ok, order} =
  Inttegro.Orders.create(client, request,
    idempotency_key: "checkout-cart-8342"
  )

checkout_url = order.invoice.format.web.url
```

Generate the idempotency key from a stable business action such as a checkout attempt. If the
request times out, retry the same request with the same key instead of creating a second order.

## Existing customers and payment methods

Use `Inttegro.Orders.CreateExistingCustomerInput` when the customer already has an Inttegro
customer ID. A `payment_method_id` supplied to an order must belong to that customer; the order flow
does not transfer ownership between customers.

Saved payment methods may still require verification or a new payer action. Inspect the returned
payment and `next_action` after every operation instead of assuming a stored identifier can be
charged synchronously.

## Understand the lifecycle

Order and payment state can advance after the initiating request returns:

1. The order is created with its line items and customer context.
2. Finalization seals the commercial terms and makes the order payable.
3. Payment execution may succeed immediately or require confirmation, redirection, or another
   provider action.
4. The payment reaches a terminal state asynchronously.
5. The order can then be completed and its invoice or receipt delivered.

Look up the order to obtain authoritative state:

```elixir
request = Inttegro.Orders.LookupRequest.new!(order_id: order.id)

case Inttegro.Orders.lookup(client, request) do
  {:ok, %Inttegro.Orders.Order{status: :completed} = completed} ->
    {:ok, completed}

  {:ok, %Inttegro.Orders.Order{} = pending} ->
    {:pending, pending.status, pending.payment && pending.payment.status}

  {:error, error} ->
    {:error, error}
end
```

Use server-to-server lifecycle notifications or an application-owned reconciliation process for
the final decision. Redirect query parameters and client callbacks are navigation signals, not a
source of truth.

## Confirmation and recovery

When `payment.next_action` is present, follow its documented type. The Orders API exposes
`request_confirmation/3` and `confirm_payment/3` for confirmation flows. Preserve the order and
attempt identifiers while the user completes the requested action.

Do not start an unrelated second payment merely because confirmation is slow. Look up the existing
order first, and create a new attempt only when the API state and your business rules allow it.

## Refunds

Refunds are separate asynchronous records linked to paid order line items. Creating one does not
rewrite the original order amount. After creation, use `Inttegro.Refunds.lookup/3` until the refund
reaches a terminal state and reconcile the corresponding balance transaction.
