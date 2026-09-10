# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Keys.SecretKeyAuthResult do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :succeeded | :failed | String.t()
  @values %{
    succeeded: "succeeded",
    failed: "failed"
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

defmodule Inttegro.Keys.SecretKeyStatus do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :active | :revoked | :expired | String.t()
  @values %{
    active: "active",
    revoked: "revoked",
    expired: "expired"
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

defmodule Inttegro.Keys.SecretKeyTokenType do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :bearer | String.t()
  @values %{
    bearer: "bearer"
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

defmodule Inttegro.Keys.DestroySecretKeyRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:secret_key_id]
  defstruct secret_key_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          secret_key_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.GenerateSecretKeyRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct label: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          label: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.GeneratedSecretKey do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:id, :token_type, :issued_at, :token]
  defstruct id: nil, label: nil, token_type: nil, issued_at: nil, token: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          token_type: Inttegro.Keys.SecretKeyTokenType.t(),
          issued_at: DateTime.t(),
          token: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      token_type: Inttegro.Keys.SecretKeyTokenType.decode(Map.fetch!(map, "token_type")),
      issued_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "issued_at")),
      token: Map.fetch!(map, "token")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "token_type" => Inttegro.Keys.SecretKeyTokenType.encode(value.token_type),
      "issued_at" => Inttegro.Codec.encode(value.issued_at),
      "token" => Inttegro.Codec.encode(value.token)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.LookupSecretKeyRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:secret_key_id]
  defstruct secret_key_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          secret_key_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.PageSecretKeysRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct page: nil, number: nil, size: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          page: integer() | nil,
          number: integer() | nil,
          size: integer() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page" => if(is_nil(value.page), do: nil, else: Inttegro.Codec.encode(value.page)),
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKey do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:id, :token_type, :issued_at, :status, :active]
  defstruct id: nil,
            label: nil,
            token_type: nil,
            issued_at: nil,
            updated_at: nil,
            expires_at: nil,
            status: nil,
            active: nil,
            revoked_at: nil,
            last_used_at: nil,
            usage_count: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          token_type: Inttegro.Keys.SecretKeyTokenType.t(),
          issued_at: DateTime.t(),
          updated_at: DateTime.t() | nil,
          expires_at: DateTime.t() | nil,
          status: Inttegro.Keys.SecretKeyStatus.t(),
          active: boolean(),
          revoked_at: DateTime.t() | nil,
          last_used_at: DateTime.t() | nil,
          usage_count: integer() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      token_type: Inttegro.Keys.SecretKeyTokenType.decode(Map.fetch!(map, "token_type")),
      issued_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "issued_at")),
      updated_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "updated_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "updated_at"))
        ),
      expires_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "expires_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "expires_at"))
        ),
      status: Inttegro.Keys.SecretKeyStatus.decode(Map.fetch!(map, "status")),
      active: Map.fetch!(map, "active"),
      revoked_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "revoked_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "revoked_at"))
        ),
      last_used_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "last_used_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "last_used_at"))
        ),
      usage_count:
        if(is_nil(Map.get(map, "usage_count")), do: nil, else: Map.get(map, "usage_count"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "token_type" => Inttegro.Keys.SecretKeyTokenType.encode(value.token_type),
      "issued_at" => Inttegro.Codec.encode(value.issued_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "status" => Inttegro.Keys.SecretKeyStatus.encode(value.status),
      "active" => Inttegro.Codec.encode(value.active),
      "revoked_at" =>
        if(is_nil(value.revoked_at), do: nil, else: Inttegro.Codec.encode(value.revoked_at)),
      "last_used_at" =>
        if(is_nil(value.last_used_at), do: nil, else: Inttegro.Codec.encode(value.last_used_at)),
      "usage_count" =>
        if(is_nil(value.usage_count), do: nil, else: Inttegro.Codec.encode(value.usage_count))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKeyPage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:number, :size, :count, :total, :has_more, :keys]
  defstruct number: nil, size: nil, count: nil, total: nil, has_more: nil, keys: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          count: integer(),
          total: integer(),
          has_more: boolean(),
          keys: [Inttegro.Keys.SecretKey.t()]
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
      count: Map.fetch!(map, "count"),
      total: Map.fetch!(map, "total"),
      has_more: Map.fetch!(map, "has_more"),
      keys:
        Enum.map(Map.fetch!(map, "keys"), fn item -> Inttegro.Keys.SecretKey.from_map(item) end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "count" => Inttegro.Codec.encode(value.count),
      "total" => Inttegro.Codec.encode(value.total),
      "has_more" => Inttegro.Codec.encode(value.has_more),
      "keys" => Enum.map(value.keys, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKeyUsage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:key, :usage]
  defstruct key: nil, usage: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          key: Inttegro.Keys.SecretKey.t(),
          usage: Inttegro.Keys.SecretKeyUsagePage.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      key: Inttegro.Keys.SecretKey.from_map(Map.fetch!(map, "key")),
      usage: Inttegro.Keys.SecretKeyUsagePage.from_map(Map.fetch!(map, "usage"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "key" => Inttegro.Codec.encode(value.key),
      "usage" => Inttegro.Codec.encode(value.usage)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKeyUsagePage do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:number, :size, :count, :total, :has_more, :rows]
  defstruct number: nil, size: nil, count: nil, total: nil, has_more: nil, rows: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          count: integer(),
          total: integer(),
          has_more: boolean(),
          rows: [Inttegro.Keys.SecretKeyUsageRow.t()]
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
      count: Map.fetch!(map, "count"),
      total: Map.fetch!(map, "total"),
      has_more: Map.fetch!(map, "has_more"),
      rows:
        Enum.map(Map.fetch!(map, "rows"), fn item ->
          Inttegro.Keys.SecretKeyUsageRow.from_map(item)
        end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "count" => Inttegro.Codec.encode(value.count),
      "total" => Inttegro.Codec.encode(value.total),
      "has_more" => Inttegro.Codec.encode(value.has_more),
      "rows" => Enum.map(value.rows, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKeyUsageRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:secret_key_id]
  defstruct number: nil, page: nil, size: nil, secret_key_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          number: integer() | nil,
          page: integer() | nil,
          size: integer() | nil,
          secret_key_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "page" => if(is_nil(value.page), do: nil, else: Inttegro.Codec.encode(value.page)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.SecretKeyUsageRow do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:secret_key_id, :occurred_at, :auth_result]
  defstruct secret_key_id: nil, occurred_at: nil, auth_result: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          secret_key_id: String.t(),
          occurred_at: DateTime.t(),
          auth_result: Inttegro.Keys.SecretKeyAuthResult.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id"),
      occurred_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "occurred_at")),
      auth_result: Inttegro.Keys.SecretKeyAuthResult.decode(Map.fetch!(map, "auth_result"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id),
      "occurred_at" => Inttegro.Codec.encode(value.occurred_at),
      "auth_result" => Inttegro.Keys.SecretKeyAuthResult.encode(value.auth_result)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Keys.UpdateSecretKeyRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:label, :secret_key_id]
  defstruct label: nil, secret_key_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          label: String.t(),
          secret_key_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: Map.fetch!(map, "label"),
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "label" => Inttegro.Codec.encode(value.label),
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
