# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Balances.Balance do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:ghs]
  defstruct ghs: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{ghs: Inttegro.Balances.CurrencySnapshot.t()}
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      ghs: Inttegro.Balances.CurrencySnapshot.from_map(Map.fetch!(map, "ghs"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{"ghs" => Inttegro.Codec.encode(value.ghs)}
  end
end

defmodule Inttegro.Balances.Value do
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

defmodule Inttegro.Balances.CurrencySnapshot do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:available, :includes_transactions_before, :pending, :refund, :reserved]
  defstruct available: nil,
            includes_transactions_before: nil,
            pending: nil,
            refund: nil,
            reserved: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          available: Inttegro.Balances.Value.t(),
          includes_transactions_before: DateTime.t(),
          pending: Inttegro.Balances.Value.t(),
          refund: Inttegro.Balances.CurrencySnapshotRefund.t(),
          reserved: Inttegro.Balances.CurrencySnapshotReserved.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      available: Inttegro.Balances.Value.from_map(Map.fetch!(map, "available")),
      includes_transactions_before:
        Inttegro.Codec.decode_timestamp(Map.fetch!(map, "includes_transactions_before")),
      pending: Inttegro.Balances.Value.from_map(Map.fetch!(map, "pending")),
      refund: Inttegro.Balances.CurrencySnapshotRefund.from_map(Map.fetch!(map, "refund")),
      reserved: Inttegro.Balances.CurrencySnapshotReserved.from_map(Map.fetch!(map, "reserved"))
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

defmodule Inttegro.Balances.CurrencySnapshotRefund do
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

defmodule Inttegro.Balances.CurrencySnapshotReserved do
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

defmodule Inttegro.Balances.LookupRequest do
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
