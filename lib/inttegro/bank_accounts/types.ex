# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.BankAccounts.Type do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :ghana_bank_account | String.t()
  @values %{
    ghana_bank_account: "ghana_bank_account"
  }
  @doc Inttegro.Docs.enum_values_doc(__MODULE__)
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @doc false
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @doc false
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.BankAccounts.GhanaAccount do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:holder, :number]
  defstruct branch: nil, holder: nil, name: nil, number: nil, sort_code: nil, swift_code: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          branch: String.t() | nil,
          holder: Inttegro.FinancialAccounts.Owner.t(),
          name: String.t() | nil,
          number: String.t(),
          sort_code: String.t() | nil,
          swift_code: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      branch: if(is_nil(Map.get(map, "branch")), do: nil, else: Map.get(map, "branch")),
      holder: Inttegro.FinancialAccounts.Owner.from_map(Map.fetch!(map, "holder")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      number: Map.fetch!(map, "number"),
      sort_code: if(is_nil(Map.get(map, "sort_code")), do: nil, else: Map.get(map, "sort_code")),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "branch" => if(is_nil(value.branch), do: nil, else: Inttegro.Codec.encode(value.branch)),
      "holder" => Inttegro.Codec.encode(value.holder),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "number" => Inttegro.Codec.encode(value.number),
      "sort_code" =>
        if(is_nil(value.sort_code), do: nil, else: Inttegro.Codec.encode(value.sort_code)),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
