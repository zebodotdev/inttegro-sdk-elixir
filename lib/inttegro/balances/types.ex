# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Balances.BalanceValue do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:amount]
  defstruct amount: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          amount: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Balances.CurrencyBalanceSnapshot do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:available, :includes_transactions_before, :pending, :refund, :reserved]
  defstruct available: nil,
            includes_transactions_before: nil,
            pending: nil,
            refund: nil,
            reserved: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          available: Inttegro.Balances.BalanceValue.t(),
          includes_transactions_before: String.t(),
          pending: Inttegro.Balances.BalanceValue.t(),
          refund: Inttegro.Balances.CurrencyBalanceSnapshotRefund.t(),
          reserved: Inttegro.Balances.CurrencyBalanceSnapshotReserved.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      available: Inttegro.Balances.BalanceValue.from_map(Map.fetch!(map, "available")),
      includes_transactions_before: Map.fetch!(map, "includes_transactions_before"),
      pending: Inttegro.Balances.BalanceValue.from_map(Map.fetch!(map, "pending")),
      refund: Inttegro.Balances.CurrencyBalanceSnapshotRefund.from_map(Map.fetch!(map, "refund")),
      reserved:
        Inttegro.Balances.CurrencyBalanceSnapshotReserved.from_map(Map.fetch!(map, "reserved"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "available" => Inttegro.Codec.encode(value.available),
      "includes_transactions_before" => Inttegro.Codec.encode(value.includes_transactions_before),
      "pending" => Inttegro.Codec.encode(value.pending),
      "refund" => Inttegro.Codec.encode(value.refund),
      "reserved" => Inttegro.Codec.encode(value.reserved)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Balances.CurrencyBalanceSnapshotRefund do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:amount]
  defstruct amount: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          amount: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Balances.CurrencyBalanceSnapshotReserved do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:amount]
  defstruct amount: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          amount: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Balances.LookupBalancesRequest do
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
