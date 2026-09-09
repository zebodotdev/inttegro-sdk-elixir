# Errors and retries

Inttegro resource functions return one of three public failure classes. Keeping them distinct is
important because they imply different recovery behavior.

## API errors

`Inttegro.Errors.APIError` means Inttegro returned an unsuccessful HTTP response. Inspect its
`status`, `code`, `type`, and `fix_code` rather than parsing `Exception.message/1`:

```elixir
case Inttegro.Orders.lookup(client, request) do
  {:error, %Inttegro.Errors.APIError{status: 404}} ->
    {:error, :not_found}

  {:error, %Inttegro.Errors.APIError{status: 429} = error} ->
    {:retry_later, error.request_id}

  {:error, %Inttegro.Errors.APIError{} = error} ->
    {:rejected, error.code, error.fix_code}

  result ->
    result
end
```

Most 4xx responses describe a request that must be corrected or an operation that business rules do
not allow. A 5xx response may be temporary, but mutations still require an idempotency key before
they can be retried safely.

## Transport errors

`Inttegro.Errors.TransportError` means the SDK did not receive a usable HTTP response. The server
may have processed the request before the connection was lost, so the outcome is unknown.

For a mutation:

1. preserve the exact logical request;
2. reuse its idempotency key;
3. retry with bounded backoff; and
4. look up the resulting resource when the retry response is also uncertain.

Do not generate a new idempotency key for each network attempt. That changes retries into distinct
operations and can create duplicate financial or customer records.

## Decoding errors

`Inttegro.Errors.DecodingError` means an otherwise successful response did not match the SDK's
documented domain type. This is usually contract drift or a malformed response, not input the user
can correct. Record the request ID or privacy-safe error report, stop automatic retries that would
repeat the same response, and upgrade or report the SDK mismatch.

## Retry ownership

The SDK configures `Req` with automatic retries disabled. Your application therefore owns retry
budgets, backoff, cancellation, and idempotency. This avoids hidden retries for financial mutations
and lets the caller coordinate them with job processing or request deadlines.

Background jobs should persist the business operation and idempotency key together. A job retry can
then resume the same intent even after a process or node restarts.
