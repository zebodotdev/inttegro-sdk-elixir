# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.BalanceTransactions.Type do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :payment | :refund | String.t()
  @values %{
    payment: "payment",
    refund: "refund"
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

defmodule Inttegro.BalanceTransactions.BalanceTransaction do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:amount, :created_at, :id, :order_id, :type]
  defstruct amount: nil,
            available_at: nil,
            claimed_at: nil,
            created_at: nil,
            id: nil,
            order_id: nil,
            paid_at: nil,
            payment_id: nil,
            payout_id: nil,
            payout_configuration: nil,
            refund_id: nil,
            type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          amount: Inttegro.BalanceTransactions.Amount.t(),
          available_at: DateTime.t() | nil,
          claimed_at: DateTime.t() | nil,
          created_at: DateTime.t(),
          id: String.t(),
          order_id: String.t(),
          paid_at: DateTime.t() | nil,
          payment_id: String.t() | nil,
          payout_id: String.t() | nil,
          payout_configuration: Inttegro.Payments.PayoutConfiguration.t() | nil,
          refund_id: String.t() | nil,
          type: Inttegro.BalanceTransactions.Type.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Inttegro.BalanceTransactions.Amount.from_map(Map.fetch!(map, "amount")),
      available_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "available_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "available_at"))
        ),
      claimed_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "claimed_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "claimed_at"))
        ),
      created_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "created_at")),
      id: Map.fetch!(map, "id"),
      order_id: Map.fetch!(map, "order_id"),
      paid_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "paid_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "paid_at"))
        ),
      payment_id:
        if(is_nil(Map.get(map, "payment_id")), do: nil, else: Map.get(map, "payment_id")),
      payout_id: if(is_nil(Map.get(map, "payout_id")), do: nil, else: Map.get(map, "payout_id")),
      payout_configuration:
        if(is_nil(Map.get(map, "payout_configuration")),
          do: nil,
          else:
            Inttegro.Payments.PayoutConfiguration.from_map(Map.get(map, "payout_configuration"))
        ),
      refund_id: if(is_nil(Map.get(map, "refund_id")), do: nil, else: Map.get(map, "refund_id")),
      type: Inttegro.BalanceTransactions.Type.decode(Map.fetch!(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount),
      "available_at" =>
        if(is_nil(value.available_at), do: nil, else: Inttegro.Codec.encode(value.available_at)),
      "claimed_at" =>
        if(is_nil(value.claimed_at), do: nil, else: Inttegro.Codec.encode(value.claimed_at)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "id" => Inttegro.Codec.encode(value.id),
      "order_id" => Inttegro.Codec.encode(value.order_id),
      "paid_at" => if(is_nil(value.paid_at), do: nil, else: Inttegro.Codec.encode(value.paid_at)),
      "payment_id" =>
        if(is_nil(value.payment_id), do: nil, else: Inttegro.Codec.encode(value.payment_id)),
      "payout_id" =>
        if(is_nil(value.payout_id), do: nil, else: Inttegro.Codec.encode(value.payout_id)),
      "payout_configuration" =>
        if(is_nil(value.payout_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.payout_configuration)
        ),
      "refund_id" =>
        if(is_nil(value.refund_id), do: nil, else: Inttegro.Codec.encode(value.refund_id)),
      "type" => Inttegro.BalanceTransactions.Type.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransactions.Amount do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          currency: String.t(),
          value: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Map.fetch!(map, "currency"),
      value: Map.fetch!(map, "value")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Codec.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransactions.Page do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:number, :size]
  defstruct number: nil, size: nil, transactions: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          transactions: [Inttegro.BalanceTransactions.BalanceTransaction.t()] | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      transactions:
        if(is_nil(Map.get(map, "transactions")),
          do: nil,
          else:
            Enum.map(Map.get(map, "transactions"), fn item ->
              Inttegro.BalanceTransactions.BalanceTransaction.from_map(item)
            end)
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "transactions" =>
        if(is_nil(value.transactions),
          do: nil,
          else: Enum.map(value.transactions, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransactions.LookupRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:transaction_id]
  defstruct transaction_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          transaction_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      transaction_id: Map.fetch!(map, "transaction_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "transaction_id" => Inttegro.Codec.encode(value.transaction_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransactions.PageRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:page_number, :page_size]
  defstruct page_number: nil, page_size: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          page_number: integer(),
          page_size: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_number: Map.fetch!(map, "page_number"),
      page_size: Map.fetch!(map, "page_size")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_number" => Inttegro.Codec.encode(value.page_number),
      "page_size" => Inttegro.Codec.encode(value.page_size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
