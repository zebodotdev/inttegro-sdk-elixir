# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.PurchaseIntents.PurchaseIntentActivityType do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t ::
          :expired_viewed
          | :order_created
          | :payment_failed
          | :payment_started
          | :viewed
          | String.t()
  @values %{
    expired_viewed: "expired_viewed",
    order_created: "order_created",
    payment_failed: "payment_failed",
    payment_started: "payment_started",
    viewed: "viewed"
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

defmodule Inttegro.PurchaseIntents.PurchaseIntentStatus do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :active | :expired | :inactive | :used | String.t()
  @values %{
    active: "active",
    expired: "expired",
    inactive: "inactive",
    used: "used"
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

defmodule Inttegro.PurchaseIntents.CancelPurchaseIntentRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct id: nil, purchase_intent_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          id: String.t() | nil,
          purchase_intent_id: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      purchase_intent_id:
        if(is_nil(Map.get(map, "purchase_intent_id")),
          do: nil,
          else: Map.get(map, "purchase_intent_id")
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "purchase_intent_id" =>
        if(is_nil(value.purchase_intent_id),
          do: nil,
          else: Inttegro.Codec.encode(value.purchase_intent_id)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:quantity]
  defstruct product: nil,
            product_id: nil,
            price: nil,
            price_id: nil,
            usage: nil,
            expires_at: nil,
            quantity: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          product: Inttegro.PurchaseIntents.CreatePurchaseIntentRequestProduct.t() | nil,
          product_id: String.t() | nil,
          price: Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPrice.t() | nil,
          price_id: String.t() | nil,
          usage: Inttegro.PurchaseIntents.CreatePurchaseIntentRequestUsage.t() | nil,
          expires_at: String.t() | nil,
          quantity: Inttegro.PurchaseIntents.CreatePurchaseIntentRequestQuantity.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.CreatePurchaseIntentRequestProduct.from_map(
              Map.get(map, "product")
            )
        ),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPrice.from_map(
              Map.get(map, "price")
            )
        ),
      price_id: if(is_nil(Map.get(map, "price_id")), do: nil, else: Map.get(map, "price_id")),
      usage:
        if(is_nil(Map.get(map, "usage")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.CreatePurchaseIntentRequestUsage.from_map(
              Map.get(map, "usage")
            )
        ),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      quantity:
        Inttegro.PurchaseIntents.CreatePurchaseIntentRequestQuantity.from_map(
          Map.fetch!(map, "quantity")
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "product" => if(is_nil(value.product), do: nil, else: Inttegro.Codec.encode(value.product)),
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id)),
      "price" => if(is_nil(value.price), do: nil, else: Inttegro.Codec.encode(value.price)),
      "price_id" =>
        if(is_nil(value.price_id), do: nil, else: Inttegro.Codec.encode(value.price_id)),
      "usage" => if(is_nil(value.usage), do: nil, else: Inttegro.Codec.encode(value.usage)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "quantity" => Inttegro.Codec.encode(value.quantity)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPrice do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct id: nil, nominal: nil, original: nil, original_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          id: String.t() | nil,
          nominal: Inttegro.Prices.PriceParams.t() | nil,
          original: Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPriceOriginal.t() | nil,
          original_id: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      nominal:
        if(is_nil(Map.get(map, "nominal")),
          do: nil,
          else: Inttegro.Prices.PriceParams.from_map(Map.get(map, "nominal"))
        ),
      original:
        if(is_nil(Map.get(map, "original")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPriceOriginal.from_map(
              Map.get(map, "original")
            )
        ),
      original_id:
        if(is_nil(Map.get(map, "original_id")), do: nil, else: Map.get(map, "original_id"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "nominal" => if(is_nil(value.nominal), do: nil, else: Inttegro.Codec.encode(value.nominal)),
      "original" =>
        if(is_nil(value.original), do: nil, else: Inttegro.Codec.encode(value.original)),
      "original_id" =>
        if(is_nil(value.original_id), do: nil, else: Inttegro.Codec.encode(value.original_id))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequestPriceOriginal do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct id: nil, nominal: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          id: String.t() | nil,
          nominal: Inttegro.Prices.PriceParams.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      nominal:
        if(is_nil(Map.get(map, "nominal")),
          do: nil,
          else: Inttegro.Prices.PriceParams.from_map(Map.get(map, "nominal"))
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "nominal" => if(is_nil(value.nominal), do: nil, else: Inttegro.Codec.encode(value.nominal))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequestProduct do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:id]
  defstruct variant_set_id: nil, id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          variant_set_id: String.t() | nil,
          id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      variant_set_id:
        if(is_nil(Map.get(map, "variant_set_id")), do: nil, else: Map.get(map, "variant_set_id")),
      id: Map.fetch!(map, "id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "variant_set_id" =>
        if(is_nil(value.variant_set_id),
          do: nil,
          else: Inttegro.Codec.encode(value.variant_set_id)
        ),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequestQuantity do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:min]
  defstruct max: nil, min: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          max: integer() | nil,
          min: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max")),
      min: Map.fetch!(map, "min")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max" => if(is_nil(value.max), do: nil, else: Inttegro.Codec.encode(value.max)),
      "min" => Inttegro.Codec.encode(value.min)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.CreatePurchaseIntentRequestUsage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct single_use: nil, multi_use: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          single_use: boolean() | nil,
          multi_use: boolean() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      single_use:
        if(is_nil(Map.get(map, "single_use")), do: nil, else: Map.get(map, "single_use")),
      multi_use: if(is_nil(Map.get(map, "multi_use")), do: nil, else: Map.get(map, "multi_use"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "single_use" =>
        if(is_nil(value.single_use), do: nil, else: Inttegro.Codec.encode(value.single_use)),
      "multi_use" =>
        if(is_nil(value.multi_use), do: nil, else: Inttegro.Codec.encode(value.multi_use))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.LookupPurchaseIntentRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:id]
  defstruct id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PagePurchaseIntentsRequest do
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

defmodule Inttegro.PurchaseIntents.PurchaseIntent do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:allow_variants, :created_at, :id, :quantity, :status, :usage]
  defstruct activity: nil,
            allow_variants: nil,
            created_at: nil,
            expires_at: nil,
            id: nil,
            inactive_at: nil,
            merchant: nil,
            price: nil,
            product: nil,
            quantity: nil,
            status: nil,
            updated_at: nil,
            usage: nil,
            variant_set: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          activity: Inttegro.PurchaseIntents.PurchaseIntentActivity.t() | nil,
          allow_variants: boolean(),
          created_at: String.t(),
          expires_at: String.t() | nil,
          id: String.t(),
          inactive_at: String.t() | nil,
          merchant: Inttegro.PurchaseIntents.PurchaseIntentMerchant.t() | nil,
          price: Inttegro.PurchaseIntents.PurchaseIntentPrice.t() | nil,
          product: Inttegro.PurchaseIntents.PurchaseIntentProduct.t() | nil,
          quantity: Inttegro.PurchaseIntents.PurchaseIntentQuantity.t(),
          status: Inttegro.PurchaseIntents.PurchaseIntentStatus.t(),
          updated_at: String.t() | nil,
          usage: Inttegro.PurchaseIntents.PurchaseIntentUsage.t(),
          variant_set: Inttegro.PurchaseIntents.PurchaseIntentVariantSet.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      activity:
        if(is_nil(Map.get(map, "activity")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentActivity.from_map(Map.get(map, "activity"))
        ),
      allow_variants: Map.fetch!(map, "allow_variants"),
      created_at: Map.fetch!(map, "created_at"),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      id: Map.fetch!(map, "id"),
      inactive_at:
        if(is_nil(Map.get(map, "inactive_at")), do: nil, else: Map.get(map, "inactive_at")),
      merchant:
        if(is_nil(Map.get(map, "merchant")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentMerchant.from_map(Map.get(map, "merchant"))
        ),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentPrice.from_map(Map.get(map, "price"))
        ),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentProduct.from_map(Map.get(map, "product"))
        ),
      quantity:
        Inttegro.PurchaseIntents.PurchaseIntentQuantity.from_map(Map.fetch!(map, "quantity")),
      status: Inttegro.PurchaseIntents.PurchaseIntentStatus.decode(Map.fetch!(map, "status")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      usage: Inttegro.PurchaseIntents.PurchaseIntentUsage.from_map(Map.fetch!(map, "usage")),
      variant_set:
        if(is_nil(Map.get(map, "variant_set")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.PurchaseIntentVariantSet.from_map(
              Map.get(map, "variant_set")
            )
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "activity" =>
        if(is_nil(value.activity), do: nil, else: Inttegro.Codec.encode(value.activity)),
      "allow_variants" => Inttegro.Codec.encode(value.allow_variants),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "inactive_at" =>
        if(is_nil(value.inactive_at), do: nil, else: Inttegro.Codec.encode(value.inactive_at)),
      "merchant" =>
        if(is_nil(value.merchant), do: nil, else: Inttegro.Codec.encode(value.merchant)),
      "price" => if(is_nil(value.price), do: nil, else: Inttegro.Codec.encode(value.price)),
      "product" => if(is_nil(value.product), do: nil, else: Inttegro.Codec.encode(value.product)),
      "quantity" => Inttegro.Codec.encode(value.quantity),
      "status" => Inttegro.PurchaseIntents.PurchaseIntentStatus.encode(value.status),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "usage" => Inttegro.Codec.encode(value.usage),
      "variant_set" =>
        if(is_nil(value.variant_set), do: nil, else: Inttegro.Codec.encode(value.variant_set))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentActivity do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  defstruct recent: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          recent: [Inttegro.PurchaseIntents.PurchaseIntentActivity.t()] | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recent:
        if(is_nil(Map.get(map, "recent")),
          do: nil,
          else:
            Enum.map(Map.get(map, "recent"), fn item ->
              Inttegro.PurchaseIntents.PurchaseIntentActivity.from_map(item)
            end)
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "recent" =>
        if(is_nil(value.recent),
          do: nil,
          else: Enum.map(value.recent, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentMerchant do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  defstruct app_id: nil, app_name: nil, organization_id: nil, organization_name: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          app_id: String.t() | nil,
          app_name: String.t() | nil,
          organization_id: String.t() | nil,
          organization_name: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      app_id: if(is_nil(Map.get(map, "app_id")), do: nil, else: Map.get(map, "app_id")),
      app_name: if(is_nil(Map.get(map, "app_name")), do: nil, else: Map.get(map, "app_name")),
      organization_id:
        if(is_nil(Map.get(map, "organization_id")),
          do: nil,
          else: Map.get(map, "organization_id")
        ),
      organization_name:
        if(is_nil(Map.get(map, "organization_name")),
          do: nil,
          else: Map.get(map, "organization_name")
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "app_id" => if(is_nil(value.app_id), do: nil, else: Inttegro.Codec.encode(value.app_id)),
      "app_name" =>
        if(is_nil(value.app_name), do: nil, else: Inttegro.Codec.encode(value.app_name)),
      "organization_id" =>
        if(is_nil(value.organization_id),
          do: nil,
          else: Inttegro.Codec.encode(value.organization_id)
        ),
      "organization_name" =>
        if(is_nil(value.organization_name),
          do: nil,
          else: Inttegro.Codec.encode(value.organization_name)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentOriginalPrice do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:active, :nominal]
  defstruct active: nil, id: nil, label: nil, nominal: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t() | nil,
          label: String.t() | nil,
          nominal: Inttegro.Money.Amount.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      nominal: Inttegro.Money.Amount.from_map(Map.fetch!(map, "nominal"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "active" => Inttegro.Codec.encode(value.active),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "nominal" => Inttegro.Codec.encode(value.nominal)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentPage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:number, :purchase_intents, :size]
  defstruct number: nil, purchase_intents: nil, size: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          number: integer(),
          purchase_intents: [Inttegro.PurchaseIntents.PurchaseIntent.t()],
          size: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      purchase_intents:
        Enum.map(Map.fetch!(map, "purchase_intents"), fn item ->
          Inttegro.PurchaseIntents.PurchaseIntent.from_map(item)
        end),
      size: Map.fetch!(map, "size")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "purchase_intents" =>
        Enum.map(value.purchase_intents, fn item -> Inttegro.Codec.encode(item) end),
      "size" => Inttegro.Codec.encode(value.size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentPrice do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:active, :nominal]
  defstruct active: nil, id: nil, label: nil, nominal: nil, original: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t() | nil,
          label: String.t() | nil,
          nominal: Inttegro.Money.Amount.t(),
          original: Inttegro.PurchaseIntents.PurchaseIntentOriginalPrice.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      nominal: Inttegro.Money.Amount.from_map(Map.fetch!(map, "nominal")),
      original:
        if(is_nil(Map.get(map, "original")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.PurchaseIntentOriginalPrice.from_map(
              Map.get(map, "original")
            )
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "active" => Inttegro.Codec.encode(value.active),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "nominal" => Inttegro.Codec.encode(value.nominal),
      "original" =>
        if(is_nil(value.original), do: nil, else: Inttegro.Codec.encode(value.original))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentProduct do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:id, :active, :created_at, :name, :type]
  defstruct id: nil,
            about: nil,
            active: nil,
            archived_at: nil,
            attributes: nil,
            category: nil,
            created_at: nil,
            custom_data: nil,
            description: nil,
            dimensions: nil,
            media: nil,
            name: nil,
            published_at: nil,
            reference: nil,
            shipment: nil,
            tax_code: nil,
            type: nil,
            unit_dim: nil,
            updated_at: nil,
            prices: nil,
            variant_set_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          about: String.t() | nil,
          active: boolean(),
          archived_at: String.t() | nil,
          attributes: [Inttegro.PurchaseIntents.PurchaseIntentProductAttributesItem.t()] | nil,
          category: String.t() | nil,
          created_at: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          description: String.t() | nil,
          dimensions: %{optional(String.t()) => term()} | nil,
          media: %{optional(String.t()) => term()} | nil,
          name: String.t(),
          published_at: String.t() | nil,
          reference: String.t() | nil,
          shipment: %{optional(String.t()) => term()} | nil,
          tax_code: String.t() | nil,
          type: Inttegro.Products.ProductType.t(),
          unit_dim: String.t() | nil,
          updated_at: String.t() | nil,
          prices: [Inttegro.Products.ProductPriceSummary.t()] | nil,
          variant_set_id: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      active: Map.fetch!(map, "active"),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at")),
      attributes:
        if(is_nil(Map.get(map, "attributes")),
          do: nil,
          else:
            Enum.map(Map.get(map, "attributes"), fn item ->
              Inttegro.PurchaseIntents.PurchaseIntentProductAttributesItem.from_map(item)
            end)
        ),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      created_at: Map.fetch!(map, "created_at"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      dimensions:
        if(is_nil(Map.get(map, "dimensions")),
          do: nil,
          else: Map.new(Map.get(map, "dimensions"), fn {key, value} -> {key, value} end)
        ),
      media:
        if(is_nil(Map.get(map, "media")),
          do: nil,
          else: Map.new(Map.get(map, "media"), fn {key, value} -> {key, value} end)
        ),
      name: Map.fetch!(map, "name"),
      published_at:
        if(is_nil(Map.get(map, "published_at")), do: nil, else: Map.get(map, "published_at")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      shipment:
        if(is_nil(Map.get(map, "shipment")),
          do: nil,
          else: Map.new(Map.get(map, "shipment"), fn {key, value} -> {key, value} end)
        ),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      type: Inttegro.Products.ProductType.decode(Map.fetch!(map, "type")),
      unit_dim: if(is_nil(Map.get(map, "unit_dim")), do: nil, else: Map.get(map, "unit_dim")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      prices:
        if(is_nil(Map.get(map, "prices")),
          do: nil,
          else:
            Enum.map(Map.get(map, "prices"), fn item ->
              Inttegro.Products.ProductPriceSummary.from_map(item)
            end)
        ),
      variant_set_id:
        if(is_nil(Map.get(map, "variant_set_id")), do: nil, else: Map.get(map, "variant_set_id"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "active" => Inttegro.Codec.encode(value.active),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at)),
      "attributes" =>
        if(is_nil(value.attributes),
          do: nil,
          else: Enum.map(value.attributes, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "dimensions" =>
        if(is_nil(value.dimensions),
          do: nil,
          else:
            Map.new(value.dimensions, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "media" =>
        if(is_nil(value.media),
          do: nil,
          else:
            Map.new(value.media, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "name" => Inttegro.Codec.encode(value.name),
      "published_at" =>
        if(is_nil(value.published_at), do: nil, else: Inttegro.Codec.encode(value.published_at)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "shipment" =>
        if(is_nil(value.shipment),
          do: nil,
          else:
            Map.new(value.shipment, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "type" => Inttegro.Products.ProductType.encode(value.type),
      "unit_dim" =>
        if(is_nil(value.unit_dim), do: nil, else: Inttegro.Codec.encode(value.unit_dim)),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "prices" =>
        if(is_nil(value.prices),
          do: nil,
          else: Enum.map(value.prices, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "variant_set_id" =>
        if(is_nil(value.variant_set_id),
          do: nil,
          else: Inttegro.Codec.encode(value.variant_set_id)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentProductAttributesItem do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:name, :value]
  defstruct name: nil, value: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      value: Map.fetch!(map, "value")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => Inttegro.Codec.encode(value.name),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentQuantity do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:min]
  defstruct min: nil, max: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          min: integer(),
          max: integer() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      min: Map.fetch!(map, "min"),
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "min" => Inttegro.Codec.encode(value.min),
      "max" => if(is_nil(value.max), do: nil, else: Inttegro.Codec.encode(value.max))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentUsage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  defstruct multi_use: nil, order: nil, single_use: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          multi_use: boolean() | nil,
          order: Inttegro.PurchaseIntents.PurchaseIntentUsageOrder.t() | nil,
          single_use: boolean() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      multi_use: if(is_nil(Map.get(map, "multi_use")), do: nil, else: Map.get(map, "multi_use")),
      order:
        if(is_nil(Map.get(map, "order")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentUsageOrder.from_map(Map.get(map, "order"))
        ),
      single_use:
        if(is_nil(Map.get(map, "single_use")), do: nil, else: Map.get(map, "single_use"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "multi_use" =>
        if(is_nil(value.multi_use), do: nil, else: Inttegro.Codec.encode(value.multi_use)),
      "order" => if(is_nil(value.order), do: nil, else: Inttegro.Codec.encode(value.order)),
      "single_use" =>
        if(is_nil(value.single_use), do: nil, else: Inttegro.Codec.encode(value.single_use))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentUsageOrder do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:created_at, :id]
  defstruct created_at: nil, id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          created_at: String.t(),
          id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      id: Map.fetch!(map, "id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentVariant do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:active, :product_id, :variant_values]
  defstruct active: nil,
            position: nil,
            price: nil,
            product: nil,
            product_id: nil,
            variant_values: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          active: boolean(),
          position: integer() | nil,
          price: Inttegro.PurchaseIntents.PurchaseIntentPrice.t() | nil,
          product: Inttegro.PurchaseIntents.PurchaseIntentProduct.t() | nil,
          product_id: String.t(),
          variant_values: %{optional(String.t()) => String.t()}
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      position: if(is_nil(Map.get(map, "position")), do: nil, else: Map.get(map, "position")),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentPrice.from_map(Map.get(map, "price"))
        ),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PurchaseIntents.PurchaseIntentProduct.from_map(Map.get(map, "product"))
        ),
      product_id: Map.fetch!(map, "product_id"),
      variant_values:
        Map.new(Map.fetch!(map, "variant_values"), fn {key, value} -> {key, value} end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "active" => Inttegro.Codec.encode(value.active),
      "position" =>
        if(is_nil(value.position), do: nil, else: Inttegro.Codec.encode(value.position)),
      "price" => if(is_nil(value.price), do: nil, else: Inttegro.Codec.encode(value.price)),
      "product" => if(is_nil(value.product), do: nil, else: Inttegro.Codec.encode(value.product)),
      "product_id" => Inttegro.Codec.encode(value.product_id),
      "variant_values" =>
        Map.new(value.variant_values, fn {key, value} ->
          {to_string(key), Inttegro.Codec.encode(value)}
        end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentVariantAxis do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:key, :label, :position]
  defstruct key: nil, label: nil, position: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          key: String.t(),
          label: String.t(),
          position: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      key: Map.fetch!(map, "key"),
      label: Map.fetch!(map, "label"),
      position: Map.fetch!(map, "position")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "key" => Inttegro.Codec.encode(value.key),
      "label" => Inttegro.Codec.encode(value.label),
      "position" => Inttegro.Codec.encode(value.position)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.PurchaseIntentVariantSet do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:active, :id, :name, :variant_axes, :variants]
  defstruct active: nil,
            default_product_id: nil,
            description: nil,
            id: nil,
            name: nil,
            reference: nil,
            variant_axes: nil,
            variants: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          active: boolean(),
          default_product_id: String.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          name: String.t(),
          reference: String.t() | nil,
          variant_axes: [Inttegro.PurchaseIntents.PurchaseIntentVariantAxis.t()],
          variants: [Inttegro.PurchaseIntents.PurchaseIntentVariant.t()]
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      default_product_id:
        if(is_nil(Map.get(map, "default_product_id")),
          do: nil,
          else: Map.get(map, "default_product_id")
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      variant_axes:
        Enum.map(Map.fetch!(map, "variant_axes"), fn item ->
          Inttegro.PurchaseIntents.PurchaseIntentVariantAxis.from_map(item)
        end),
      variants:
        Enum.map(Map.fetch!(map, "variants"), fn item ->
          Inttegro.PurchaseIntents.PurchaseIntentVariant.from_map(item)
        end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "active" => Inttegro.Codec.encode(value.active),
      "default_product_id" =>
        if(is_nil(value.default_product_id),
          do: nil,
          else: Inttegro.Codec.encode(value.default_product_id)
        ),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "variant_axes" => Enum.map(value.variant_axes, fn item -> Inttegro.Codec.encode(item) end),
      "variants" => Enum.map(value.variants, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.UpdatePurchaseIntentRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct expires_at: nil, id: nil, quantity: nil, purchase_intent_id: nil, reactivate: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          expires_at: String.t() | nil,
          id: String.t() | nil,
          quantity: Inttegro.PurchaseIntents.UpdatePurchaseIntentRequestQuantity.t() | nil,
          purchase_intent_id: String.t() | nil,
          reactivate: boolean() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      quantity:
        if(is_nil(Map.get(map, "quantity")),
          do: nil,
          else:
            Inttegro.PurchaseIntents.UpdatePurchaseIntentRequestQuantity.from_map(
              Map.get(map, "quantity")
            )
        ),
      purchase_intent_id:
        if(is_nil(Map.get(map, "purchase_intent_id")),
          do: nil,
          else: Map.get(map, "purchase_intent_id")
        ),
      reactivate:
        if(is_nil(Map.get(map, "reactivate")), do: nil, else: Map.get(map, "reactivate"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "quantity" =>
        if(is_nil(value.quantity), do: nil, else: Inttegro.Codec.encode(value.quantity)),
      "purchase_intent_id" =>
        if(is_nil(value.purchase_intent_id),
          do: nil,
          else: Inttegro.Codec.encode(value.purchase_intent_id)
        ),
      "reactivate" =>
        if(is_nil(value.reactivate), do: nil, else: Inttegro.Codec.encode(value.reactivate))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntents.UpdatePurchaseIntentRequestQuantity do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:min]
  defstruct max: nil, min: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          max: integer() | nil,
          min: integer()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max")),
      min: Map.fetch!(map, "min")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max" => if(is_nil(value.max), do: nil, else: Inttegro.Codec.encode(value.max)),
      "min" => Inttegro.Codec.encode(value.min)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
