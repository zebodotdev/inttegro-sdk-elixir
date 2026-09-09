# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.MessageTemplates.ContentSafetyStatus do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :allowed | :rejected | :quarantined | String.t()
  @values %{
    allowed: "allowed",
    rejected: "rejected",
    quarantined: "quarantined"
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

defmodule Inttegro.MessageTemplates.Channel do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :sms | :email | String.t()
  @values %{
    sms: "sms",
    email: "email"
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

defmodule Inttegro.MessageTemplates.Status do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t :: :draft | :published | :archived | String.t()
  @values %{
    draft: "draft",
    published: "published",
    archived: "archived"
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

defmodule Inttegro.MessageTemplates.VariableItemType do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t ::
          :string
          | :number
          | :integer
          | :boolean
          | :url
          | :email
          | :phone
          | :date
          | :datetime
          | String.t()
  @values %{
    string: "string",
    number: "number",
    integer: "integer",
    boolean: "boolean",
    url: "url",
    email: "email",
    phone: "phone",
    date: "date",
    datetime: "datetime"
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

defmodule Inttegro.MessageTemplates.VariableType do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :enum)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :enum)
  @type t ::
          :string
          | :number
          | :integer
          | :boolean
          | :url
          | :email
          | :phone
          | :date
          | :datetime
          | :array
          | String.t()
  @values %{
    string: "string",
    number: "number",
    integer: "integer",
    boolean: "boolean",
    url: "url",
    email: "email",
    phone: "phone",
    date: "date",
    datetime: "datetime",
    array: "array"
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

defmodule Inttegro.MessageTemplates.CreateRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :union)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :union)
  @type t ::
          Inttegro.MessageTemplates.CreateSMSRequest.t()
          | Inttegro.MessageTemplates.CreateEmailRequest.t()

  @doc false
  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.MessageTemplates.CreateSMSRequest,
        Inttegro.MessageTemplates.CreateEmailRequest
      ],
      value,
      fn module ->
        try do
          module.from_map(value)
        rescue
          _ -> nil
        end
      end
    )
  end
end

defmodule Inttegro.MessageTemplates.AttachmentIDs do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :union)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :union)
  @type t :: [String.t()]
  @doc false
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.MessageTemplates.AttachmentIDsInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :union)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :union)
  @type t :: [String.t()]
  @doc false
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.MessageTemplates.VariablesInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :union)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :union)
  @type t :: %{optional(String.t()) => term()}
  @doc false
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.MessageTemplates.BroadcastRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :union)
  @typedoc Inttegro.Docs.type_doc(__MODULE__, :union)
  @type t :: String.t() | Inttegro.MessageTemplates.ReferenceInput.t()

  @doc false
  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.MessageTemplates.ReferenceInput
      ],
      value,
      fn module ->
        try do
          module.from_map(value)
        rescue
          _ -> nil
        end
      end
    )
  end
end

defmodule Inttegro.MessageTemplates.CreateEmailRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:channel, :email, :name, :purpose]
  defstruct about: nil,
            attachments: nil,
            locale: nil,
            variables: nil,
            channel: nil,
            email: nil,
            name: nil,
            purpose: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          about: String.t() | nil,
          attachments: [String.t()] | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplates.VariableInput.t()] | nil,
          channel: Inttegro.MessageTemplates.Channel.t(),
          email: Inttegro.MessageTemplates.EmailContentInput.t(),
          name: String.t(),
          purpose: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale")),
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else:
            Enum.map(Map.get(map, "variables"), fn item ->
              Inttegro.MessageTemplates.VariableInput.from_map(item)
            end)
        ),
      channel: Inttegro.MessageTemplates.Channel.decode(Map.fetch!(map, "channel")),
      email: Inttegro.MessageTemplates.EmailContentInput.from_map(Map.fetch!(map, "email")),
      name: Map.fetch!(map, "name"),
      purpose: Map.fetch!(map, "purpose")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "attachments" =>
        if(is_nil(value.attachments),
          do: nil,
          else: Enum.map(value.attachments, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "locale" => if(is_nil(value.locale), do: nil, else: Inttegro.Codec.encode(value.locale)),
      "variables" =>
        if(is_nil(value.variables),
          do: nil,
          else: Enum.map(value.variables, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "channel" => Inttegro.MessageTemplates.Channel.encode(value.channel),
      "email" => Inttegro.Codec.encode(value.email),
      "name" => Inttegro.Codec.encode(value.name),
      "purpose" => Inttegro.Codec.encode(value.purpose)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.CreateSMSRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:channel, :name, :purpose, :sms]
  defstruct about: nil,
            locale: nil,
            variables: nil,
            channel: nil,
            name: nil,
            purpose: nil,
            sms: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          about: String.t() | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplates.VariableInput.t()] | nil,
          channel: Inttegro.MessageTemplates.Channel.t(),
          name: String.t(),
          purpose: String.t(),
          sms: Inttegro.MessageTemplates.SMSContentInput.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale")),
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else:
            Enum.map(Map.get(map, "variables"), fn item ->
              Inttegro.MessageTemplates.VariableInput.from_map(item)
            end)
        ),
      channel: Inttegro.MessageTemplates.Channel.decode(Map.fetch!(map, "channel")),
      name: Map.fetch!(map, "name"),
      purpose: Map.fetch!(map, "purpose"),
      sms: Inttegro.MessageTemplates.SMSContentInput.from_map(Map.fetch!(map, "sms"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "locale" => if(is_nil(value.locale), do: nil, else: Inttegro.Codec.encode(value.locale)),
      "variables" =>
        if(is_nil(value.variables),
          do: nil,
          else: Enum.map(value.variables, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "channel" => Inttegro.MessageTemplates.Channel.encode(value.channel),
      "name" => Inttegro.Codec.encode(value.name),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "sms" => Inttegro.Codec.encode(value.sms)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.MessageTemplate do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [
    :id,
    :name,
    :channel,
    :purpose,
    :locale,
    :status,
    :version,
    :draft_version,
    :has_unpublished_changes,
    :created_at,
    :updated_at
  ]
  defstruct id: nil,
            name: nil,
            about: nil,
            channel: nil,
            purpose: nil,
            locale: nil,
            status: nil,
            version: nil,
            published_version: nil,
            draft_version: nil,
            has_unpublished_changes: nil,
            variables: nil,
            sms: nil,
            email: nil,
            attachments: nil,
            created_at: nil,
            updated_at: nil,
            published_at: nil,
            archived_at: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          about: String.t() | nil,
          channel: Inttegro.MessageTemplates.Channel.t(),
          purpose: String.t(),
          locale: String.t(),
          status: Inttegro.MessageTemplates.Status.t(),
          version: integer(),
          published_version: integer() | nil,
          draft_version: integer(),
          has_unpublished_changes: boolean(),
          variables: [Inttegro.MessageTemplates.Variable.t()] | nil,
          sms: Inttegro.MessageTemplates.SMSContent.t() | nil,
          email: Inttegro.MessageTemplates.EmailContent.t() | nil,
          attachments: [String.t()] | nil,
          created_at: String.t(),
          updated_at: String.t(),
          published_at: String.t() | nil,
          archived_at: String.t() | nil
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
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      channel: Inttegro.MessageTemplates.Channel.decode(Map.fetch!(map, "channel")),
      purpose: Map.fetch!(map, "purpose"),
      locale: Map.fetch!(map, "locale"),
      status: Inttegro.MessageTemplates.Status.decode(Map.fetch!(map, "status")),
      version: Map.fetch!(map, "version"),
      published_version:
        if(is_nil(Map.get(map, "published_version")),
          do: nil,
          else: Map.get(map, "published_version")
        ),
      draft_version: Map.fetch!(map, "draft_version"),
      has_unpublished_changes: Map.fetch!(map, "has_unpublished_changes"),
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else:
            Enum.map(Map.get(map, "variables"), fn item ->
              Inttegro.MessageTemplates.Variable.from_map(item)
            end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.MessageTemplates.SMSContent.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.MessageTemplates.EmailContent.from_map(Map.get(map, "email"))
        ),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at: Map.fetch!(map, "updated_at"),
      published_at:
        if(is_nil(Map.get(map, "published_at")), do: nil, else: Map.get(map, "published_at")),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "channel" => Inttegro.MessageTemplates.Channel.encode(value.channel),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "locale" => Inttegro.Codec.encode(value.locale),
      "status" => Inttegro.MessageTemplates.Status.encode(value.status),
      "version" => Inttegro.Codec.encode(value.version),
      "published_version" =>
        if(is_nil(value.published_version),
          do: nil,
          else: Inttegro.Codec.encode(value.published_version)
        ),
      "draft_version" => Inttegro.Codec.encode(value.draft_version),
      "has_unpublished_changes" => Inttegro.Codec.encode(value.has_unpublished_changes),
      "variables" =>
        if(is_nil(value.variables),
          do: nil,
          else: Enum.map(value.variables, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "sms" => if(is_nil(value.sms), do: nil, else: Inttegro.Codec.encode(value.sms)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "attachments" =>
        if(is_nil(value.attachments),
          do: nil,
          else: Enum.map(value.attachments, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" => Inttegro.Codec.encode(value.updated_at),
      "published_at" =>
        if(is_nil(value.published_at), do: nil, else: Inttegro.Codec.encode(value.published_at)),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.EmailContent do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:subject, :html]
  defstruct subject: nil, html: nil, from_: nil, reply_to: nil, headers: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          subject: String.t(),
          html: String.t(),
          from_: Inttegro.MessageTemplates.Mailbox.t() | nil,
          reply_to: Inttegro.MessageTemplates.Mailbox.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      subject: Map.fetch!(map, "subject"),
      html: Map.fetch!(map, "html"),
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplates.Mailbox.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplates.Mailbox.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "subject" => Inttegro.Codec.encode(value.subject),
      "html" => Inttegro.Codec.encode(value.html),
      "from" => if(is_nil(value.from_), do: nil, else: Inttegro.Codec.encode(value.from_)),
      "reply_to" =>
        if(is_nil(value.reply_to), do: nil, else: Inttegro.Codec.encode(value.reply_to)),
      "headers" =>
        if(is_nil(value.headers),
          do: nil,
          else:
            Map.new(value.headers, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.EmailContentInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:subject, :html]
  defstruct from_: nil, reply_to: nil, headers: nil, subject: nil, html: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          from_: Inttegro.MessageTemplates.MailboxInput.t() | nil,
          reply_to: Inttegro.MessageTemplates.MailboxInput.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          subject: String.t(),
          html: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplates.MailboxInput.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplates.MailboxInput.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        ),
      subject: Map.fetch!(map, "subject"),
      html: Map.fetch!(map, "html")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "from" => if(is_nil(value.from_), do: nil, else: Inttegro.Codec.encode(value.from_)),
      "reply_to" =>
        if(is_nil(value.reply_to), do: nil, else: Inttegro.Codec.encode(value.reply_to)),
      "headers" =>
        if(is_nil(value.headers),
          do: nil,
          else:
            Map.new(value.headers, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "subject" => Inttegro.Codec.encode(value.subject),
      "html" => Inttegro.Codec.encode(value.html)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.IDRequest do
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

defmodule Inttegro.MessageTemplates.Mailbox do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:address]
  defstruct address: nil, name: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          address: String.t(),
          name: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Map.fetch!(map, "address"),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.MailboxInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:address]
  defstruct name: nil, address: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address: Map.fetch!(map, "address")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "address" => Inttegro.Codec.encode(value.address)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.Preview do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:message_template, :rendered]
  defstruct message_template: nil, rendered: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          message_template: Inttegro.MessageTemplates.MessageTemplate.t(),
          rendered: Inttegro.MessageTemplates.Rendered.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template:
        Inttegro.MessageTemplates.MessageTemplate.from_map(Map.fetch!(map, "message_template")),
      rendered: Inttegro.MessageTemplates.Rendered.from_map(Map.fetch!(map, "rendered"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template),
      "rendered" => Inttegro.Codec.encode(value.rendered)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.ReferenceInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:template_id]
  defstruct variables: nil, template_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          variables: %{optional(String.t()) => term()} | nil,
          template_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else: Map.new(Map.get(map, "variables"), fn {key, value} -> {key, value} end)
        ),
      template_id: Map.fetch!(map, "template_id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "variables" =>
        if(is_nil(value.variables),
          do: nil,
          else:
            Map.new(value.variables, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "template_id" => Inttegro.Codec.encode(value.template_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.SMSContent do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          message_template: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template: Map.fetch!(map, "message_template")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.SMSContentInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          message_template: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template: Map.fetch!(map, "message_template")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.SafetyResult do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:content_hash, :normalized_text, :scanner, :status]
  defstruct content_hash: nil,
            links: nil,
            normalized_text: nil,
            quarantine_notes: nil,
            reason_codes: nil,
            sanitized_html: nil,
            scanner: nil,
            status: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          content_hash: String.t(),
          links: [Inttegro.MessageTemplates.ScannedLink.t()] | nil,
          normalized_text: String.t(),
          quarantine_notes: String.t() | nil,
          reason_codes: [String.t()] | nil,
          sanitized_html: String.t() | nil,
          scanner: String.t(),
          status: Inttegro.MessageTemplates.ContentSafetyStatus.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      content_hash: Map.fetch!(map, "content_hash"),
      links:
        if(is_nil(Map.get(map, "links")),
          do: nil,
          else:
            Enum.map(Map.get(map, "links"), fn item ->
              Inttegro.MessageTemplates.ScannedLink.from_map(item)
            end)
        ),
      normalized_text: Map.fetch!(map, "normalized_text"),
      quarantine_notes:
        if(is_nil(Map.get(map, "quarantine_notes")),
          do: nil,
          else: Map.get(map, "quarantine_notes")
        ),
      reason_codes:
        if(is_nil(Map.get(map, "reason_codes")),
          do: nil,
          else: Enum.map(Map.get(map, "reason_codes"), fn item -> item end)
        ),
      sanitized_html:
        if(is_nil(Map.get(map, "sanitized_html")), do: nil, else: Map.get(map, "sanitized_html")),
      scanner: Map.fetch!(map, "scanner"),
      status: Inttegro.MessageTemplates.ContentSafetyStatus.decode(Map.fetch!(map, "status"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "content_hash" => Inttegro.Codec.encode(value.content_hash),
      "links" =>
        if(is_nil(value.links),
          do: nil,
          else: Enum.map(value.links, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "normalized_text" => Inttegro.Codec.encode(value.normalized_text),
      "quarantine_notes" =>
        if(is_nil(value.quarantine_notes),
          do: nil,
          else: Inttegro.Codec.encode(value.quarantine_notes)
        ),
      "reason_codes" =>
        if(is_nil(value.reason_codes),
          do: nil,
          else: Enum.map(value.reason_codes, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "sanitized_html" =>
        if(is_nil(value.sanitized_html),
          do: nil,
          else: Inttegro.Codec.encode(value.sanitized_html)
        ),
      "scanner" => Inttegro.Codec.encode(value.scanner),
      "status" => Inttegro.MessageTemplates.ContentSafetyStatus.encode(value.status)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.ScannedLink do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:raw, :scheme, :status]
  defstruct host: nil, raw: nil, reason: nil, scheme: nil, status: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          host: String.t() | nil,
          raw: String.t(),
          reason: String.t() | nil,
          scheme: String.t(),
          status: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      host: if(is_nil(Map.get(map, "host")), do: nil, else: Map.get(map, "host")),
      raw: Map.fetch!(map, "raw"),
      reason: if(is_nil(Map.get(map, "reason")), do: nil, else: Map.get(map, "reason")),
      scheme: Map.fetch!(map, "scheme"),
      status: Map.fetch!(map, "status")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "host" => if(is_nil(value.host), do: nil, else: Inttegro.Codec.encode(value.host)),
      "raw" => Inttegro.Codec.encode(value.raw),
      "reason" => if(is_nil(value.reason), do: nil, else: Inttegro.Codec.encode(value.reason)),
      "scheme" => Inttegro.Codec.encode(value.scheme),
      "status" => Inttegro.Codec.encode(value.status)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.Variable do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:name, :required, :type]
  defstruct about: nil, default: nil, items: nil, name: nil, required: nil, type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          items: [Inttegro.MessageTemplates.VariableItem.t()] | nil,
          name: String.t(),
          required: boolean(),
          type: Inttegro.MessageTemplates.VariableType.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      items:
        if(is_nil(Map.get(map, "items")),
          do: nil,
          else:
            Enum.map(Map.get(map, "items"), fn item ->
              Inttegro.MessageTemplates.VariableItem.from_map(item)
            end)
        ),
      name: Map.fetch!(map, "name"),
      required: Map.fetch!(map, "required"),
      type: Inttegro.MessageTemplates.VariableType.decode(Map.fetch!(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "items" =>
        if(is_nil(value.items),
          do: nil,
          else: Enum.map(value.items, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "name" => Inttegro.Codec.encode(value.name),
      "required" => Inttegro.Codec.encode(value.required),
      "type" => Inttegro.MessageTemplates.VariableType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.VariableInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:name, :type]
  defstruct required: nil, default: nil, about: nil, items: nil, name: nil, type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          required: boolean() | nil,
          default: term() | nil,
          about: String.t() | nil,
          items: [Inttegro.MessageTemplates.VariableItemInput.t()] | nil,
          name: String.t(),
          type: Inttegro.MessageTemplates.VariableType.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      required: if(is_nil(Map.get(map, "required")), do: nil, else: Map.get(map, "required")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      items:
        if(is_nil(Map.get(map, "items")),
          do: nil,
          else:
            Enum.map(Map.get(map, "items"), fn item ->
              Inttegro.MessageTemplates.VariableItemInput.from_map(item)
            end)
        ),
      name: Map.fetch!(map, "name"),
      type: Inttegro.MessageTemplates.VariableType.decode(Map.fetch!(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "required" =>
        if(is_nil(value.required), do: nil, else: Inttegro.Codec.encode(value.required)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "items" =>
        if(is_nil(value.items),
          do: nil,
          else: Enum.map(value.items, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "name" => Inttegro.Codec.encode(value.name),
      "type" => Inttegro.MessageTemplates.VariableType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.VariableItem do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:name, :required, :type]
  defstruct about: nil, default: nil, name: nil, required: nil, type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          name: String.t(),
          required: boolean(),
          type: Inttegro.MessageTemplates.VariableItemType.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      name: Map.fetch!(map, "name"),
      required: Map.fetch!(map, "required"),
      type: Inttegro.MessageTemplates.VariableItemType.decode(Map.fetch!(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "name" => Inttegro.Codec.encode(value.name),
      "required" => Inttegro.Codec.encode(value.required),
      "type" => Inttegro.MessageTemplates.VariableItemType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.VariableItemInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:name, :type]
  defstruct about: nil, default: nil, required: nil, name: nil, type: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          required: boolean() | nil,
          name: String.t(),
          type: Inttegro.MessageTemplates.VariableItemType.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      required: if(is_nil(Map.get(map, "required")), do: nil, else: Map.get(map, "required")),
      name: Map.fetch!(map, "name"),
      type: Inttegro.MessageTemplates.VariableItemType.decode(Map.fetch!(map, "type"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "required" =>
        if(is_nil(value.required), do: nil, else: Inttegro.Codec.encode(value.required)),
      "name" => Inttegro.Codec.encode(value.name),
      "type" => Inttegro.MessageTemplates.VariableItemType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.Page do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:number, :size, :message_templates]
  defstruct number: nil, size: nil, message_templates: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          message_templates: [Inttegro.MessageTemplates.MessageTemplate.t()]
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
      message_templates:
        Enum.map(Map.fetch!(map, "message_templates"), fn item ->
          Inttegro.MessageTemplates.MessageTemplate.from_map(item)
        end)
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "message_templates" =>
        Enum.map(value.message_templates, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.PageRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  defstruct page: nil, size: nil, status: nil, channel: nil, purpose: nil, locale: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          page: integer() | nil,
          size: integer() | nil,
          status: Inttegro.MessageTemplates.Status.t() | nil,
          channel: Inttegro.MessageTemplates.Channel.t() | nil,
          purpose: String.t() | nil,
          locale: String.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.MessageTemplates.Status.decode(Map.get(map, "status"))
        ),
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.MessageTemplates.Channel.decode(Map.get(map, "channel"))
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page" => if(is_nil(value.page), do: nil, else: Inttegro.Codec.encode(value.page)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "status" =>
        if(is_nil(value.status),
          do: nil,
          else: Inttegro.MessageTemplates.Status.encode(value.status)
        ),
      "channel" =>
        if(is_nil(value.channel),
          do: nil,
          else: Inttegro.MessageTemplates.Channel.encode(value.channel)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "locale" => if(is_nil(value.locale), do: nil, else: Inttegro.Codec.encode(value.locale))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.RenderPreviewRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          message_template: Inttegro.MessageTemplates.ReferenceInput.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template:
        Inttegro.MessageTemplates.ReferenceInput.from_map(Map.fetch!(map, "message_template"))
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.RenderedEmail do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:subject, :text]
  defstruct subject: nil,
            text: nil,
            html: nil,
            from_: nil,
            reply_to: nil,
            headers: nil,
            safety: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          subject: String.t(),
          text: String.t(),
          html: String.t() | nil,
          from_: Inttegro.MessageTemplates.Mailbox.t() | nil,
          reply_to: Inttegro.MessageTemplates.Mailbox.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          safety: Inttegro.MessageTemplates.SafetyResult.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      subject: Map.fetch!(map, "subject"),
      text: Map.fetch!(map, "text"),
      html: if(is_nil(Map.get(map, "html")), do: nil, else: Map.get(map, "html")),
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplates.Mailbox.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplates.Mailbox.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        ),
      safety:
        if(is_nil(Map.get(map, "safety")),
          do: nil,
          else: Inttegro.MessageTemplates.SafetyResult.from_map(Map.get(map, "safety"))
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "subject" => Inttegro.Codec.encode(value.subject),
      "text" => Inttegro.Codec.encode(value.text),
      "html" => if(is_nil(value.html), do: nil, else: Inttegro.Codec.encode(value.html)),
      "from" => if(is_nil(value.from_), do: nil, else: Inttegro.Codec.encode(value.from_)),
      "reply_to" =>
        if(is_nil(value.reply_to), do: nil, else: Inttegro.Codec.encode(value.reply_to)),
      "headers" =>
        if(is_nil(value.headers),
          do: nil,
          else:
            Map.new(value.headers, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "safety" => if(is_nil(value.safety), do: nil, else: Inttegro.Codec.encode(value.safety))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.Rendered do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:channel]
  defstruct channel: nil, attachments: nil, sms: nil, email: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          channel: Inttegro.MessageTemplates.Channel.t(),
          attachments: [String.t()] | nil,
          sms: Inttegro.MessageTemplates.RenderedSMS.t() | nil,
          email: Inttegro.MessageTemplates.RenderedEmail.t() | nil
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      channel: Inttegro.MessageTemplates.Channel.decode(Map.fetch!(map, "channel")),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.MessageTemplates.RenderedSMS.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.MessageTemplates.RenderedEmail.from_map(Map.get(map, "email"))
        )
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "channel" => Inttegro.MessageTemplates.Channel.encode(value.channel),
      "attachments" =>
        if(is_nil(value.attachments),
          do: nil,
          else: Enum.map(value.attachments, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "sms" => if(is_nil(value.sms), do: nil, else: Inttegro.Codec.encode(value.sms)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.RenderedSMS do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:full_message]
  defstruct full_message: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          full_message: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      full_message: Map.fetch!(map, "full_message")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "full_message" => Inttegro.Codec.encode(value.full_message)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplates.UpdateRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:id]
  defstruct name: nil,
            about: nil,
            channel: nil,
            purpose: nil,
            locale: nil,
            variables: nil,
            sms: nil,
            email: nil,
            attachments: nil,
            id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          name: String.t() | nil,
          about: String.t() | nil,
          channel: Inttegro.MessageTemplates.Channel.t() | nil,
          purpose: String.t() | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplates.VariableInput.t()] | nil,
          sms: Inttegro.MessageTemplates.SMSContentInput.t() | nil,
          email: Inttegro.MessageTemplates.EmailContentInput.t() | nil,
          attachments: [String.t()] | nil,
          id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.MessageTemplates.Channel.decode(Map.get(map, "channel"))
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale")),
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else:
            Enum.map(Map.get(map, "variables"), fn item ->
              Inttegro.MessageTemplates.VariableInput.from_map(item)
            end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.MessageTemplates.SMSContentInput.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.MessageTemplates.EmailContentInput.from_map(Map.get(map, "email"))
        ),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      id: Map.fetch!(map, "id")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "channel" =>
        if(is_nil(value.channel),
          do: nil,
          else: Inttegro.MessageTemplates.Channel.encode(value.channel)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "locale" => if(is_nil(value.locale), do: nil, else: Inttegro.Codec.encode(value.locale)),
      "variables" =>
        if(is_nil(value.variables),
          do: nil,
          else: Enum.map(value.variables, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "sms" => if(is_nil(value.sms), do: nil, else: Inttegro.Codec.encode(value.sms)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "attachments" =>
        if(is_nil(value.attachments),
          do: nil,
          else: Enum.map(value.attachments, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
