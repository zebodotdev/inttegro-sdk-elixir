# Inttegro Elixir SDK

The official typed Elixir client for server-side Inttegro integrations.

```elixir
def deps do
  [{:inttegro, "~> 0.1"}]
end
```

```elixir
client = Inttegro.Client.new!(System.fetch_env!("INTTEGRO_API_KEY"))
request = Inttegro.LookupOrderRequest.new!(order_id: "order_...")
{:ok, order} = Inttegro.Orders.lookup(client, request)
```

Resource functions return domain values such as `Inttegro.Order`; HTTP response
envelopes remain private.

## Observability and error reporting

Pass `:telemetry` and/or `:error_reporter` callbacks to `Inttegro.Client.new!/2`.
Telemetry emits prepared, received, decoded, and failed lifecycle events without
API keys, request bodies, or resource identifiers. Error reports are not constructed
unless a reporter is configured. The default `:unexpected` policy reports transport,
decoding, unknown, and server failures.

See the [API reference](https://hexdocs.pm/inttegro/) and
[Inttegro Studio](https://studio.inttegro.com/sdks/elixir).
