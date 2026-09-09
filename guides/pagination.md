# Pagination

Collection APIs return numbered pages rather than an unbounded list. A visible first page is not an
authoritative total, and new records can arrive while a long scan is in progress.

Construct the page request for the domain you are reading:

```elixir
request =
  Inttegro.Orders.PageRequest.new!(
    page_number: 1,
    page_size: 50
  )

{:ok, page} = Inttegro.Orders.page(client, request)
```

Page structs expose their number, size, and resource collection. To process every page, advance
until the returned collection is shorter than the requested size. Preserve any supported time or
status filters across calls.

```elixir
defmodule MyApp.InttegroOrderScan do
  def stream(client, page_number \\ 1, page_size \\ 50) do
    Stream.resource(
      fn -> page_number end,
      fn
        :done ->
          {:halt, :done}

        current ->
          request =
            Inttegro.Orders.PageRequest.new!(
              page_number: current,
              page_size: page_size
            )

          case Inttegro.Orders.page(client, request) do
            {:ok, %{orders: []}} ->
              {:halt, current}

            {:ok, %{orders: orders}} when length(orders) < page_size ->
              {orders, :done}

            {:ok, %{orders: orders}} ->
              {orders, current + 1}

            {:error, error} ->
              raise error
          end
      end,
      fn _ -> :ok end
    )
  end
end
```

For financial reconciliation, define a cutoff before scanning and use creation-window filters where
the API provides them. This reduces drift caused by records arriving between page requests. Persist
the last completed page or time window when a scan must resume after failure.
