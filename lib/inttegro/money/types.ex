# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Money.Currency do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :ghs | :usd | :gbp | :eur | :cny | String.t()
  @values %{
    ghs: "ghs",
    usd: "usd",
    gbp: "gbp",
    eur: "eur",
    cny: "cny"
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

defmodule Inttegro.Money.Amount do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          currency: Inttegro.Money.Currency.t(),
          value: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Money.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Money.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Money.AmountParams do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          currency: Inttegro.Money.Currency.t(),
          value: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Money.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Money.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
