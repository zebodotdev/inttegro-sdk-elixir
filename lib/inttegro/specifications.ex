# Typed Inttegro API resource.

defmodule Inttegro.Specifications do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Retrieve country specifications including supported currencies, payment methods, payout schedules, legal entity types, financial account types, ID document types, and country-specific bank reference data for all configured countries. Use this to: - Build country-specific onboarding flows - Validate payment methods by country - Display appropriate ID document types - Show available payout schedules per country - Populate country-specific bank and branch selectors This is a public endpoint that does not require authentication.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, the documented result}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      Inttegro.Specifications.countries(client)
  """
  @spec countries(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.Specifications.CountrySpecification.t()}}
          | {:error, Exception.t()}
  def countries(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/spec/countries",
             %{},
             options,
             "specifications.countries",
             "countries",
             false
           ) do
      {:ok,
       Map.new(value, fn {key, value} ->
         {key, Inttegro.Specifications.CountrySpecification.from_map(value)}
       end)}
    end
  end
end
