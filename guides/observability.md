# Observability

The SDK exposes lifecycle events and structured error reports without choosing a telemetry vendor
or exporter. Your application remains responsible for where those records go.

## Lifecycle events

Pass a one-argument callback when constructing the client:

```elixir
client =
  Inttegro.Client.new!(System.fetch_env!("INTTEGRO_API_KEY"),
    telemetry: fn event ->
      :telemetry.execute(
        [:my_app, :inttegro, :request],
        %{duration: event.duration_ms},
        Map.drop(event, [:duration_ms])
      )
    end
  )
```

The callback receives these lifecycle names:

* `inttegro.request.prepared` — the logical request is ready to be sent;
* `inttegro.response.received` — an HTTP response was received;
* `inttegro.response.decoded` — the success body was decoded into its domain value; and
* `inttegro.request.failed` — an API, transport, or decoding failure ended the operation.

Each event contains the logical operation, HTTP method, static route, status code when known, and
elapsed milliseconds. Callback failures are isolated and never replace the SDK operation result.

## Error reports

An error reporter receives `Inttegro.Telemetry.ErrorReport` values:

```elixir
client =
  Inttegro.Client.new!(System.fetch_env!("INTTEGRO_API_KEY"),
    error_reporting_policy: :unexpected,
    error_reporter: fn report ->
      MyApp.ErrorReporter.enqueue(Jason.encode!(report))
    end
  )
```

The default `:unexpected` policy reports transport, decoding, unknown, and server failures while
leaving expected 4xx application errors alone. Use `:all` when your own monitoring policy requires
every API rejection. Without `:error_reporter`, the SDK does not construct an event ID, timestamp,
or report payload.

Reports contain the SDK identity, logical operation, static route, server origin, status and request
IDs when available, duration, safe API codes, exception class, and stable fingerprint. They exclude:

* API keys and authorization headers;
* request and response bodies;
* customer, order, payment, and other resource IDs;
* dynamic URLs and query strings;
* error messages and stack traces.

Those exclusions are part of the SDK contract. If your callback enriches events, apply the same
discipline before forwarding them to logs, metrics, traces, or an external error collector.
