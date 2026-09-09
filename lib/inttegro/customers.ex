# Typed Inttegro API resource.

defmodule Inttegro.Customers do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Create a reusable customer profile for orders and saved payment methods.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Customers.CreateCustomerRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Customers.Customer.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Customers.CreateCustomerRequest.new!(request_attributes)

      case Inttegro.Customers.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.Customers.CreateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/create",
             Inttegro.Codec.encode(request),
             options,
             "customers.create",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @doc """
  Look up a customer

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Customers.LookupCustomerRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Customers.Customer.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Customers.LookupCustomerRequest.new!(request_attributes)

      case Inttegro.Customers.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Customers.LookupCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/lookup",
             Inttegro.Codec.encode(request),
             options,
             "customers.lookup",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @doc """
  Replace any supplied customer profile fields while leaving omitted fields unchanged.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Customers.UpdateCustomerRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Customers.Customer.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Customers.UpdateCustomerRequest.new!(request_attributes)

      case Inttegro.Customers.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.Customers.UpdateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/update",
             Inttegro.Codec.encode(request),
             options,
             "customers.update",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @doc """
  Retrieve a page of customers for the authenticated application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Customers.PageCustomersRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Customers.CustomerPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Customers.PageCustomersRequest.new!(request_attributes)

      case Inttegro.Customers.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Customers.PageCustomersRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.CustomerPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/page",
             Inttegro.Codec.encode(request),
             options,
             "customers.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Customers.CustomerPage.from_map(value)}
    end
  end
end
