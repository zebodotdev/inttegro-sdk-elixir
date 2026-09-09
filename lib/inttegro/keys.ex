# Typed Inttegro API resource.

defmodule Inttegro.Keys do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Generates a new active secret key for the authenticated application. The full bearer token is returned only in this response and cannot be retrieved later. Store it before returning success from your provisioning flow. Existing keys remain active, and this operation is not idempotent: retrying an uncertain request can create another key.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.GenerateSecretKeyRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.GeneratedSecretKey.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.GenerateSecretKeyRequest.new!(request_attributes)

      case Inttegro.Keys.generate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec generate(Client.t(), Inttegro.Keys.GenerateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.GeneratedSecretKey.t()} | {:error, Exception.t()}
  def generate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/generate",
             Inttegro.Codec.encode(request),
             options,
             "keys.generate",
             "key",
             true
           ) do
      {:ok, Inttegro.Keys.GeneratedSecretKey.from_map(value)}
    end
  end

  @doc """
  Lists public metadata for secret keys that belong to the authenticated application, newest first. Bearer tokens are never returned.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.PageSecretKeysRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.SecretKeyPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.PageSecretKeysRequest.new!(request_attributes)

      case Inttegro.Keys.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.Keys.PageSecretKeysRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKeyPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/page",
             Inttegro.Codec.encode(request),
             options,
             "keys.page",
             "page",
             true
           ) do
      {:ok, Inttegro.Keys.SecretKeyPage.from_map(value)}
    end
  end

  @doc """
  Retrieves public metadata for a secret key owned by the authenticated application. The bearer token is never returned.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.LookupSecretKeyRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.SecretKey.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.LookupSecretKeyRequest.new!(request_attributes)

      case Inttegro.Keys.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Keys.LookupSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/lookup",
             Inttegro.Codec.encode(request),
             options,
             "keys.lookup",
             "key",
             true
           ) do
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @doc """
  Updates the label of a secret key owned by the authenticated application. Send an empty label to clear it. The bearer token is never returned.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.UpdateSecretKeyRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.SecretKey.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.UpdateSecretKeyRequest.new!(request_attributes)

      case Inttegro.Keys.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.Keys.UpdateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/update",
             Inttegro.Codec.encode(request),
             options,
             "keys.update",
             "key",
             true
           ) do
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @doc """
  Revokes a secret key owned by the authenticated application. A revoked key cannot authenticate future requests but remains visible as public metadata.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.DestroySecretKeyRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.SecretKey.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.DestroySecretKeyRequest.new!(request_attributes)

      case Inttegro.Keys.destroy(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec destroy(Client.t(), Inttegro.Keys.DestroySecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
  def destroy(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/destroy",
             Inttegro.Codec.encode(request),
             options,
             "keys.destroy",
             "key",
             true
           ) do
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @doc """
  Retrieves recent authentication outcomes for a secret key owned by the authenticated application. Each activity row contains only the key ID, event time, and outcome; bearer tokens are never returned.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Keys.SecretKeyUsageRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Keys.SecretKeyUsage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Keys.SecretKeyUsageRequest.new!(request_attributes)

      case Inttegro.Keys.usage(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec usage(Client.t(), Inttegro.Keys.SecretKeyUsageRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKeyUsage.t()} | {:error, Exception.t()}
  def usage(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/usage",
             Inttegro.Codec.encode(request),
             options,
             "keys.usage",
             nil,
             true
           ) do
      {:ok, Inttegro.Keys.SecretKeyUsage.from_map(value)}
    end
  end
end
