# Typed Inttegro API resource.

defmodule Inttegro.Otp do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Generate a one-time password and deliver it by SMS. Store the returned transaction ID and use it with the recipient's submitted code at the verification endpoint. Retry an uncertain initiation with the same idempotency key and body.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Otp.InitiateRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Otp.Transaction.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Otp.InitiateRequest.new!(request_attributes)

      case Inttegro.Otp.initiate(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec initiate(Client.t(), Inttegro.Otp.InitiateRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.Transaction.t()} | {:error, Exception.t()}
  def initiate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/initiate",
             Inttegro.Codec.encode(request),
             options,
             "otp.initiate",
             "transaction",
             true
           ) do
      {:ok, Inttegro.Otp.Transaction.from_map(value)}
    end
  end

  @doc """
  Check the code submitted by the recipient and record the attempt. A completed request returns a `pass` or `fail` verdict; retry an uncertain verification with the same idempotency key and body.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Otp.VerifyRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Otp.Verification.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Otp.VerifyRequest.new!(request_attributes)

      case Inttegro.Otp.verify(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec verify(Client.t(), Inttegro.Otp.VerifyRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.Verification.t()} | {:error, Exception.t()}
  def verify(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/verify",
             Inttegro.Codec.encode(request),
             options,
             "otp.verify",
             nil,
             true
           ) do
      {:ok, Inttegro.Otp.Verification.from_map(value)}
    end
  end

  @doc """
  Retrieve the delivery, verification, and expiry state of an OTP transaction by ID. The generated token is never returned by this endpoint.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.Otp.LookupRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.Otp.Transaction.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.Otp.LookupRequest.new!(request_attributes)

      case Inttegro.Otp.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.Otp.LookupRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.Transaction.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/lookup",
             Inttegro.Codec.encode(request),
             options,
             "otp.lookup",
             "transaction",
             true
           ) do
      {:ok, Inttegro.Otp.Transaction.from_map(value)}
    end
  end
end
