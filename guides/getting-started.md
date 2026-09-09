# Getting started

This guide takes an Elixir application from installation to its first authenticated Inttegro
request. The SDK is designed for server code: it holds a secret key and must not be bundled into a
browser or mobile application.

## Add the dependency

Add `inttegro` to `mix.exs`:

```elixir
def deps do
  [
    {:inttegro, "~> 0.2"}
  ]
end
```

Then fetch and compile it:

```console
mix deps.get
mix compile
```

## Configure the secret key

Read the key at runtime so releases can receive it from their deployment environment:

```elixir
# config/runtime.exs
import Config

config :my_app, :inttegro_api_key, System.fetch_env!("INTTEGRO_API_KEY")
```

Constructing a client is inexpensive. The client is a plain immutable struct, not a GenServer, and
can be shared between concurrent callers:

```elixir
defmodule MyApp.Inttegro do
  @spec client() :: Inttegro.Client.t()
  def client do
    :my_app
    |> Application.fetch_env!(:inttegro_api_key)
    |> Inttegro.Client.new!()
  end
end
```

The default origin is `https://api.inttegro.com`. Use `:base_url` or a configured `Req.Request` only
for controlled tests, proxies, or an Inttegro environment that explicitly requires it.

## Call a resource API

Operation modules are plural collections. Request and response types live beneath the domain they
belong to:

```elixir
client = MyApp.Inttegro.client()
request = Inttegro.Customers.LookupCustomerRequest.new!(customer_id: "cu_...")

case Inttegro.Customers.lookup(client, request) do
  {:ok, %Inttegro.Customers.Customer{} = customer} ->
    {:ok, customer}

  {:error, %Inttegro.Errors.APIError{status: 404}} ->
    {:error, :customer_not_found}

  {:error, error} ->
    {:error, error}
end
```

Every resource function returns an explicit tagged tuple. The SDK does not raise for API or
transport failures. Request constructors ending in `new!` do raise when an enforced field is
missing, which catches invalid local construction before a network request is attempted.

## Pass request options

The final argument is a keyword list represented by `Inttegro.Client.RequestOptions`:

```elixir
Inttegro.Customers.update(client, request,
  idempotency_key: "customer-profile-8342-v3",
  headers: [{"x-correlation-id", correlation_id}]
)
```

Use `:idempotency_key` for operations that create or change state. When a timeout or connection loss
makes the outcome uncertain, retry the same logical operation with the same key. Use a new key for a
new intent.

Additional headers are application-owned metadata. Do not place credentials or sensitive customer
data in them; they commonly travel through logs and tracing infrastructure.

## Choose the next guide

* Read **Orders and payments** to create a hosted checkout and handle asynchronous payment state.
* Read **Errors and retries** before adding automatic retry behavior.
* Read **Pagination** before computing totals or synchronizing collections.
* Read **Files and uploads** before moving binary content or issuing public upload capabilities.
* Read **Observability** to connect lifecycle events to your telemetry stack without leaking data.
