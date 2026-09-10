# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Schedules.CancelRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:schedule_id]
  defstruct schedule_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          schedule_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      schedule_id: Map.fetch!(map, "schedule_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "schedule_id" => Inttegro.Codec.encode(value.schedule_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Schedules.LookupRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:schedule_id]
  defstruct schedule_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          schedule_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      schedule_id: Map.fetch!(map, "schedule_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "schedule_id" => Inttegro.Codec.encode(value.schedule_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Schedules.CancelDetail do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:content, :created_at, :id, :recipients, :send_after, :sender_id]
  defstruct chime_ids: nil,
            content: nil,
            created_at: nil,
            customer_ids: nil,
            email: nil,
            errors: nil,
            executed_at: nil,
            id: nil,
            idempotency_key: nil,
            purpose: nil,
            recipients: nil,
            send_after: nil,
            sender_id: nil,
            canceled_at: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: DateTime.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.Chimes.EmailMessage.t() | nil,
          errors: [Inttegro.Schedules.Error.t()] | nil,
          executed_at: DateTime.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: DateTime.t(),
          sender_id: String.t(),
          canceled_at: DateTime.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "created_at")),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.Chimes.EmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item ->
              Inttegro.Schedules.Error.from_map(item)
            end)
        ),
      executed_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "executed_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "executed_at"))
        ),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "send_after")),
      sender_id: Map.fetch!(map, "sender_id"),
      canceled_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "canceled_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "canceled_at"))
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "chime_ids" =>
        if(is_nil(value.chime_ids),
          do: nil,
          else: Enum.map(value.chime_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "content" => Inttegro.Codec.encode(value.content),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "customer_ids" =>
        if(is_nil(value.customer_ids),
          do: nil,
          else: Enum.map(value.customer_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "errors" =>
        if(is_nil(value.errors),
          do: nil,
          else: Enum.map(value.errors, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "executed_at" =>
        if(is_nil(value.executed_at), do: nil, else: Inttegro.Codec.encode(value.executed_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "recipients" => Enum.map(value.recipients, fn item -> Inttegro.Codec.encode(item) end),
      "send_after" => Inttegro.Codec.encode(value.send_after),
      "sender_id" => Inttegro.Codec.encode(value.sender_id),
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Schedules.Detail do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:content, :created_at, :id, :recipients, :send_after, :sender_id]
  defstruct chime_ids: nil,
            content: nil,
            created_at: nil,
            customer_ids: nil,
            email: nil,
            errors: nil,
            executed_at: nil,
            id: nil,
            idempotency_key: nil,
            purpose: nil,
            recipients: nil,
            send_after: nil,
            sender_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: DateTime.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.Chimes.EmailMessage.t() | nil,
          errors: [Inttegro.Schedules.Error.t()] | nil,
          executed_at: DateTime.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: DateTime.t(),
          sender_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "created_at")),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.Chimes.EmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item ->
              Inttegro.Schedules.Error.from_map(item)
            end)
        ),
      executed_at:
        if(is_nil(Inttegro.Codec.decode_timestamp(Map.get(map, "executed_at"))),
          do: nil,
          else: Inttegro.Codec.decode_timestamp(Map.get(map, "executed_at"))
        ),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "send_after")),
      sender_id: Map.fetch!(map, "sender_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "chime_ids" =>
        if(is_nil(value.chime_ids),
          do: nil,
          else: Enum.map(value.chime_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "content" => Inttegro.Codec.encode(value.content),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "customer_ids" =>
        if(is_nil(value.customer_ids),
          do: nil,
          else: Enum.map(value.customer_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "errors" =>
        if(is_nil(value.errors),
          do: nil,
          else: Enum.map(value.errors, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "executed_at" =>
        if(is_nil(value.executed_at), do: nil, else: Inttegro.Codec.encode(value.executed_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "recipients" => Enum.map(value.recipients, fn item -> Inttegro.Codec.encode(item) end),
      "send_after" => Inttegro.Codec.encode(value.send_after),
      "sender_id" => Inttegro.Codec.encode(value.sender_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Schedules.Error do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  defstruct recipient: nil, fix_code: nil, type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          recipient: String.t() | nil,
          fix_code: String.t() | nil,
          type: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient")),
      fix_code: if(is_nil(Map.get(map, "fix_code")), do: nil, else: Map.get(map, "fix_code")),
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "recipient" =>
        if(is_nil(value.recipient), do: nil, else: Inttegro.Codec.encode(value.recipient)),
      "fix_code" =>
        if(is_nil(value.fix_code), do: nil, else: Inttegro.Codec.encode(value.fix_code)),
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
