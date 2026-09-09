# Typed Inttegro API resource.

defmodule Inttegro.Prices do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Creates a new price in your catalog. Prices define the cost of products and can optionally be associated with a product. Multiple prices can exist for the same product to support different currencies, markets, or customer segments. Key points: - Price amounts are immutable after creation (create new price to change amount) - Product association (product_id) is optional at creation but immutable once set - Label and about fields can be updated later - Amount must be a positive integer representing the smallest currency unit (cents, pence, etc.)

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.CatalogPriceParams` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.CatalogPriceParams.new!(request_attributes)

      case Inttegro.Prices.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.Prices.CatalogPriceParams.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/create",
             Inttegro.Codec.encode(request),
             options,
             "prices.create",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Retrieves a price's details by ID. Returns the complete price record including amount, currency, associated product, label, description, and timestamps.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.LookupPriceRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.LookupPriceRequest.new!(request_attributes)

      case Inttegro.Prices.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Prices.LookupPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/lookup",
             Inttegro.Codec.encode(request),
             options,
             "prices.lookup",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Retrieve a paginated list of prices for the authenticated application. Results are sorted by created_at in descending order, so page 1 contains the most recently created prices and subsequent pages step back in time. If `product_id` is supplied, the page is scoped to prices that belong to that product. The product must belong to your authenticated application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.PricePageRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.PricePage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.PricePageRequest.new!(request_attributes)

      case Inttegro.Prices.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Prices.PricePageRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.PricePage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/page",
             Inttegro.Codec.encode(request),
             options,
             "prices.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Prices.PricePage.from_map(value)}
    end
  end

  @doc """
  Updates an existing price's metadata. Only label and about fields can be modified. Amount and product association are not accepted by this operation; create a new price when either must differ.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.UpdatePriceRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.UpdatePriceRequest.new!(request_attributes)

      case Inttegro.Prices.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.Prices.UpdatePriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/update",
             Inttegro.Codec.encode(request),
             options,
             "prices.update",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Reactivates an inactive price so it can be used again in new flows. Key points: - The price must belong to the authenticated application - Archived prices cannot be activated - Already-active prices return an error

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.PriceActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.PriceActionRequest.new!(request_attributes)

      case Inttegro.Prices.activate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec activate(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def activate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/activate",
             Inttegro.Codec.encode(request),
             options,
             "prices.activate",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Marks a price as inactive so it can no longer be used for new default-price assignments or other active catalog flows. Key points: - The price must belong to the authenticated application - Archived prices cannot be deactivated - Already-inactive prices return an error

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.PriceActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.PriceActionRequest.new!(request_attributes)

      case Inttegro.Prices.deactivate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec deactivate(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def deactivate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/deactivate",
             Inttegro.Codec.encode(request),
             options,
             "prices.deactivate",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Archive a price and mark it inactive. An archived price cannot be activated or deactivated, and attempting to archive it again returns a lifecycle error.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Prices.PriceActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Prices.PriceActionRequest.new!(request_attributes)

      case Inttegro.Prices.archive(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec archive(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/archive",
             Inttegro.Codec.encode(request),
             options,
             "prices.archive",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end
end
