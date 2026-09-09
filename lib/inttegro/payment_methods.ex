# Typed Inttegro API resource.

defmodule Inttegro.PaymentMethods do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Save a mobile-money payment method for an existing customer without charging it. Direct tokenization currently supports `mobile_money`; send the wallet details and owner identity described by the request schema. The returned payment method can be reused only while it is active, unarchived, and non-ephemeral. This operation supports idempotency.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.TokenizeMobileMoneyPaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.TokenizeMobileMoneyPaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.tokenize(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec tokenize(
          Client.t(),
          Inttegro.PaymentMethods.TokenizeMobileMoneyPaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def tokenize(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/tokenize",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.tokenize",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Retrieve details for a specific payment method by ID. Returns the full payment method object including verification status, creation timestamp, masked account details, and owner details when captured.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.LookupPaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.LookupPaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.PaymentMethods.LookupPaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/lookup",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.lookup",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Retrieve a paginated list of payment methods for the authenticated application. If `customer_id` is supplied, the page is scoped to payment methods that belong to that customer. The supplied customer must belong to your authenticated application.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.PaymentMethodPageRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethodPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.PaymentMethodPageRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.PaymentMethods.PaymentMethodPageRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethodPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/page",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.page",
             "page",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethodPage.from_map(value)}
    end
  end

  @doc """
  Update mutable payment method metadata for the authenticated application. Supported updates: - `custom_data` merges into existing metadata - `owner` applies patch semantics and updates only the provided owner fields - `active` toggles whether the payment method can be reused - `archived` archives or unarchives the payment method **Custom Data Merge Semantics:** - New keys are added to existing custom_data - Existing keys are updated with new values - JSON null explicitly deletes the key - Keys not present in the update are preserved When adding a new owner address to a payment method that does not already have one, `owner.address.country` is required. Archived payment methods reject all updates except a pure unarchive request. Unarchiving leaves the payment method inactive until you activate it again.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.UpdatePaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.UpdatePaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.PaymentMethods.UpdatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/update",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.update",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Mark an inactive payment method as active so it can be reused in new payment flows.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.ActivatePaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.ActivatePaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.activate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec activate(Client.t(), Inttegro.PaymentMethods.ActivatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def activate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/activate",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.activate",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Mark an active payment method as inactive so it cannot be reused in new payment flows until reactivated.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.DisactivatePaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.DisactivatePaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.deactivate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec deactivate(
          Client.t(),
          Inttegro.PaymentMethods.DisactivatePaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def deactivate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/disactivate",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.deactivate",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Archive a payment method. Archived payment methods become inactive immediately and reject further updates until they are unarchived.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.ArchivePaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.ArchivePaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.archive(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec archive(Client.t(), Inttegro.PaymentMethods.ArchivePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/archive",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.archive",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Unarchive an archived payment method so it can be updated again. Unarchiving does not automatically reactivate the payment method.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.PaymentMethods.UnarchivePaymentMethodRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethod.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.PaymentMethods.UnarchivePaymentMethodRequest.new!(request_attributes)

      case Inttegro.PaymentMethods.unarchive(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec unarchive(
          Client.t(),
          Inttegro.PaymentMethods.UnarchivePaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
  def unarchive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/unarchive",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.unarchive",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @doc """
  Retrieve payment method acceptance settings for your application. Returns configuration for all supported payment types (mobile money, bank accounts, cards, Motito) including whether each type is enabled and requires customer confirmation. Use this to: - Show only enabled payment methods in checkout - Require explicit consent when confirms_use is true - Display acceptance preferences to merchants

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.PaymentMethods.PaymentMethodSettings.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      Inttegro.PaymentMethods.settings(client)
  """
  @spec settings(Client.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethodSettings.t()} | {:error, Exception.t()}
  def settings(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/settings",
             %{},
             options,
             "payment_methods.settings",
             "settings",
             true
           ) do
      {:ok, Inttegro.PaymentMethods.PaymentMethodSettings.from_map(value)}
    end
  end
end
