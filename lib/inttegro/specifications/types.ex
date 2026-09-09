# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Specifications.CountryBank do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:id, :name, :branches]
  defstruct id: nil, name: nil, swift_code: nil, sort_code_prefix: nil, branches: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          swift_code: String.t() | nil,
          sort_code_prefix: String.t() | nil,
          branches: [Inttegro.Specifications.CountryBankBranch.t()]
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code")),
      sort_code_prefix:
        if(is_nil(Map.get(map, "sort_code_prefix")),
          do: nil,
          else: Map.get(map, "sort_code_prefix")
        ),
      branches:
        Enum.map(Map.fetch!(map, "branches"), fn item ->
          Inttegro.Specifications.CountryBankBranch.from_map(item)
        end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code)),
      "sort_code_prefix" =>
        if(is_nil(value.sort_code_prefix),
          do: nil,
          else: Inttegro.Codec.encode(value.sort_code_prefix)
        ),
      "branches" => Enum.map(value.branches, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Specifications.CountryBankBranch do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:id, :name, :sort_code]
  defstruct id: nil, name: nil, sort_code: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          sort_code: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      sort_code: Map.fetch!(map, "sort_code")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "sort_code" => Inttegro.Codec.encode(value.sort_code)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Specifications.CountryBankDirectory do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:bank_account_type, :code_scheme, :items]
  defstruct bank_account_type: nil, code_scheme: nil, items: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          bank_account_type: String.t(),
          code_scheme: String.t(),
          items: [Inttegro.Specifications.CountryBank.t()]
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bank_account_type: Map.fetch!(map, "bank_account_type"),
      code_scheme: Map.fetch!(map, "code_scheme"),
      items:
        Enum.map(Map.fetch!(map, "items"), fn item ->
          Inttegro.Specifications.CountryBank.from_map(item)
        end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bank_account_type" => Inttegro.Codec.encode(value.bank_account_type),
      "code_scheme" => Inttegro.Codec.encode(value.code_scheme),
      "items" => Enum.map(value.items, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Specifications.CountrySpecification do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [
    :country_code,
    :country_name,
    :currencies,
    :payment_methods,
    :payout_schedules,
    :bt_aging_specs,
    :legal_entity_types,
    :financial_account_types,
    :id_document_types
  ]
  defstruct country_code: nil,
            country_name: nil,
            currencies: nil,
            payment_methods: nil,
            payout_schedules: nil,
            bt_aging_specs: nil,
            legal_entity_types: nil,
            financial_account_types: nil,
            id_document_types: nil,
            banks: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          country_code: String.t(),
          country_name: String.t(),
          currencies: [String.t()],
          payment_methods: [String.t()],
          payout_schedules: [String.t()],
          bt_aging_specs: [String.t()],
          legal_entity_types: [String.t()],
          financial_account_types: [String.t()],
          id_document_types: [String.t()],
          banks: Inttegro.Specifications.CountryBankDirectory.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      country_code: Map.fetch!(map, "country_code"),
      country_name: Map.fetch!(map, "country_name"),
      currencies: Enum.map(Map.fetch!(map, "currencies"), fn item -> item end),
      payment_methods: Enum.map(Map.fetch!(map, "payment_methods"), fn item -> item end),
      payout_schedules: Enum.map(Map.fetch!(map, "payout_schedules"), fn item -> item end),
      bt_aging_specs: Enum.map(Map.fetch!(map, "bt_aging_specs"), fn item -> item end),
      legal_entity_types: Enum.map(Map.fetch!(map, "legal_entity_types"), fn item -> item end),
      financial_account_types:
        Enum.map(Map.fetch!(map, "financial_account_types"), fn item -> item end),
      id_document_types: Enum.map(Map.fetch!(map, "id_document_types"), fn item -> item end),
      banks:
        if(is_nil(Map.get(map, "banks")),
          do: nil,
          else: Inttegro.Specifications.CountryBankDirectory.from_map(Map.get(map, "banks"))
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "country_code" => Inttegro.Codec.encode(value.country_code),
      "country_name" => Inttegro.Codec.encode(value.country_name),
      "currencies" => Enum.map(value.currencies, fn item -> Inttegro.Codec.encode(item) end),
      "payment_methods" =>
        Enum.map(value.payment_methods, fn item -> Inttegro.Codec.encode(item) end),
      "payout_schedules" =>
        Enum.map(value.payout_schedules, fn item -> Inttegro.Codec.encode(item) end),
      "bt_aging_specs" =>
        Enum.map(value.bt_aging_specs, fn item -> Inttegro.Codec.encode(item) end),
      "legal_entity_types" =>
        Enum.map(value.legal_entity_types, fn item -> Inttegro.Codec.encode(item) end),
      "financial_account_types" =>
        Enum.map(value.financial_account_types, fn item -> Inttegro.Codec.encode(item) end),
      "id_document_types" =>
        Enum.map(value.id_document_types, fn item -> Inttegro.Codec.encode(item) end),
      "banks" => if(is_nil(value.banks), do: nil, else: Inttegro.Codec.encode(value.banks))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Specifications.ListCountrySpecsRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct []
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{}
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end
