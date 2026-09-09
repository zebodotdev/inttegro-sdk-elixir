# Typed Inttegro API resource.

defmodule Inttegro.Products do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Creates a new product in your catalog. Products represent items you sell—physical goods, digital downloads, services, or subscriptions. Each product includes pricing, description, and fulfillment details. Product types: - **physical**: Tangible goods requiring shipping (requires shipment details) - **digital**: Electronic content (e-books, software, media) delivered via download/stream - **service**: Intangible offerings (consulting, subscriptions, memberships) - **voucher**: Gift cards, credits, or promotional codes - **custom**: Custom product types for specialized use cases - **cause**: Donation or charitable contribution products

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.CreateProductRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.CreateProductRequest.new!(request_attributes)

      case Inttegro.Products.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.Products.CreateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/create",
             Inttegro.Codec.encode(request),
             options,
             "products.create",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Creates a new price for an existing product owned by the authenticated application. Key points: - The target product must belong to your authenticated application - Archived products cannot accept new prices - The response returns the created price only

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.AddProductPriceRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Prices.CatalogPrice.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.AddProductPriceRequest.new!(request_attributes)

      case Inttegro.Products.add_price(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec add_price(Client.t(), Inttegro.Products.AddProductPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
  def add_price(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/add_price",
             Inttegro.Codec.encode(request),
             options,
             "products.add_price",
             "price",
             true
           ) do
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @doc """
  Retrieves a product's details by ID. Returns the complete product record including pricing, description, category, shipment details, and all metadata.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.LookupProductRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.LookupProductRequest.new!(request_attributes)

      case Inttegro.Products.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Products.LookupProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/lookup",
             Inttegro.Codec.encode(request),
             options,
             "products.lookup",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Update the mutable description, classification, fulfillment, dimension, media, attribute, and custom-data fields of an existing product. If `type` is supplied, it must equal the existing type. `images` and `media` are mutually exclusive. Inline `price` updates are not supported; use the Prices API. An ID-only request succeeds without changing the product, and archived products can still be updated.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.UpdateProductRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.UpdateProductRequest.new!(request_attributes)

      case Inttegro.Products.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.Products.UpdateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/update",
             Inttegro.Codec.encode(request),
             options,
             "products.update",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Mark a product active and record its publication time. Publishing can also reactivate an archived product; the archive timestamp remains part of its history.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.ProductActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.ProductActionRequest.new!(request_attributes)

      case Inttegro.Products.publish(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec publish(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def publish(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/publish",
             Inttegro.Codec.encode(request),
             options,
             "products.publish",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Mark a product inactive for catalog lifecycle purposes. Existing prices and purchase intents are not disabled by this operation.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.ProductActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.ProductActionRequest.new!(request_attributes)

      case Inttegro.Products.unpublish(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec unpublish(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def unpublish(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/unpublish",
             Inttegro.Codec.encode(request),
             options,
             "products.unpublish",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Archive a product and mark it inactive. Archive blocks `/products/add_price`, but the current API still permits lookup, update, publish, catalog-ID order snapshots, and purchase-intent resolution for the product.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.ProductActionRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.Product.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.ProductActionRequest.new!(request_attributes)

      case Inttegro.Products.archive(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec archive(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/archive",
             Inttegro.Codec.encode(request),
             options,
             "products.archive",
             "product",
             true
           ) do
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @doc """
  Retrieve a paginated list of products for the authenticated application. No response ordering is guaranteed.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Products.PageProductsRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Products.ProductPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Products.PageProductsRequest.new!(request_attributes)

      case Inttegro.Products.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Products.PageProductsRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.ProductPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/page",
             Inttegro.Codec.encode(request),
             options,
             "products.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Products.ProductPage.from_map(value)}
    end
  end
end
