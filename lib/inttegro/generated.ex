# Generated typed Inttegro domain and request values. Do not edit manually.

defmodule Inttegro.Codec do
  @moduledoc false
  def encode(nil), do: nil
  def encode(value) when is_list(value), do: Enum.map(value, &encode/1)

  def encode(value) when is_map(value) and not is_struct(value),
    do: Map.new(value, fn {key, item} -> {to_string(key), encode(item)} end)

  def encode(%module{} = value) do
    if function_exported?(module, :to_map, 1),
      do: module.to_map(value),
      else: Map.from_struct(value)
  end

  def encode(value), do: value
end

defmodule Inttegro.AppCredentialOwner do
  @moduledoc "Typed Inttegro AppCredentialOwner value."
  @type t :: :child | :parent | String.t()
  @values %{
    child: "child",
    parent: "parent"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.AppManagementRole do
  @moduledoc "Typed Inttegro AppManagementRole value."
  @type t :: :parent | :child | String.t()
  @values %{
    parent: "parent",
    child: "child"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.AppRelationshipKind do
  @moduledoc "Typed Inttegro AppRelationshipKind value."
  @type t :: :placement | String.t()
  @values %{
    placement: "placement"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.AppRelationshipStatus do
  @moduledoc "Typed Inttegro AppRelationshipStatus value."
  @type t :: :active | :inactive | :suspended | :revoked | String.t()
  @values %{
    active: "active",
    inactive: "inactive",
    suspended: "suspended",
    revoked: "revoked"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.BalanceTransactionType do
  @moduledoc "Typed Inttegro BalanceTransactionType value."
  @type t :: :payment | :refund | String.t()
  @values %{
    payment: "payment",
    refund: "refund"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.BankAccountType do
  @moduledoc "Typed Inttegro BankAccountType value."
  @type t :: :ghana_bank_account | String.t()
  @values %{
    ghana_bank_account: "ghana_bank_account"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.CheckoutOrderStatus do
  @moduledoc "Typed Inttegro CheckoutOrderStatus value."
  @type t :: :preparing | :requires_payment | :completed | :canceled | :expired | String.t()
  @values %{
    preparing: "preparing",
    requires_payment: "requires_payment",
    completed: "completed",
    canceled: "canceled",
    expired: "expired"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.CheckoutPaymentStatus do
  @moduledoc "Typed Inttegro CheckoutPaymentStatus value."
  @type t :: :requires_action | :processing | :succeeded | :failed | :cancelled | String.t()
  @values %{
    requires_action: "requires_action",
    processing: "processing",
    succeeded: "succeeded",
    failed: "failed",
    cancelled: "cancelled"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ChimeEmailSchemaKind do
  @moduledoc "Typed Inttegro ChimeEmailSchemaKind value."
  @type t :: :gmail_view_action | :schema_org_order | :schema_org_invoice | String.t()
  @values %{
    gmail_view_action: "gmail_view_action",
    schema_org_order: "schema_org_order",
    schema_org_invoice: "schema_org_invoice"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ChimeRecipientType do
  @moduledoc "Typed Inttegro ChimeRecipientType value."
  @type t :: :phone | :email | String.t()
  @values %{
    phone: "phone",
    email: "email"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ChimeTransport do
  @moduledoc "Typed Inttegro ChimeTransport value."
  @type t :: :sms | :email | String.t()
  @values %{
    sms: "sms",
    email: "email"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ContentSafetyStatus do
  @moduledoc "Typed Inttegro ContentSafetyStatus value."
  @type t :: :allowed | :rejected | :quarantined | String.t()
  @values %{
    allowed: "allowed",
    rejected: "rejected",
    quarantined: "quarantined"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.Currency do
  @moduledoc "Typed Inttegro Currency value."
  @type t :: :ghs | :usd | :gbp | :eur | :cny | String.t()
  @values %{
    ghs: "ghs",
    usd: "usd",
    gbp: "gbp",
    eur: "eur",
    cny: "cny"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.DeliveryChannel do
  @moduledoc "Typed Inttegro DeliveryChannel value."
  @type t :: :email | :sms | String.t()
  @values %{
    email: "email",
    sms: "sms"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileDelivery do
  @moduledoc "Typed Inttegro FileDelivery value."
  @type t :: :stream | :redirect | String.t()
  @values %{
    stream: "stream",
    redirect: "redirect"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileDisposition do
  @moduledoc "Typed Inttegro FileDisposition value."
  @type t :: :attachment | :inline | String.t()
  @values %{
    attachment: "attachment",
    inline: "inline"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileLinkDeliveryMode do
  @moduledoc "Typed Inttegro FileLinkDeliveryMode value."
  @type t :: :redirect | :download | :inline | String.t()
  @values %{
    redirect: "redirect",
    download: "download",
    inline: "inline"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileLinkKind do
  @moduledoc "Typed Inttegro FileLinkKind value."
  @type t :: :public | String.t()
  @values %{
    public: "public"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileLinkStatus do
  @moduledoc "Typed Inttegro FileLinkStatus value."
  @type t :: :active | :revoked | :expired | :disabled | String.t()
  @values %{
    active: "active",
    revoked: "revoked",
    expired: "expired",
    disabled: "disabled"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileScanStatus do
  @moduledoc "Typed Inttegro FileScanStatus value."
  @type t :: :pending | :passed | :failed | :skipped | String.t()
  @values %{
    pending: "pending",
    passed: "passed",
    failed: "failed",
    skipped: "skipped"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileSourceType do
  @moduledoc "Typed Inttegro FileSourceType value."
  @type t :: :direct | :upload_request | :service | String.t()
  @values %{
    direct: "direct",
    upload_request: "upload_request",
    service: "service"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileStatus do
  @moduledoc "Typed Inttegro FileStatus value."
  @type t :: :uploading | :processing | :available | :failed | :deleted | String.t()
  @values %{
    uploading: "uploading",
    processing: "processing",
    available: "available",
    failed: "failed",
    deleted: "deleted"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FileStorageEncoding do
  @moduledoc "Typed Inttegro FileStorageEncoding value."
  @type t :: :identity | :brotli | String.t()
  @values %{
    identity: "identity",
    brotli: "br"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.FinancialAccountType do
  @moduledoc "Typed Inttegro FinancialAccountType value."
  @type t :: :wallet | :bank_account | :dosh_account | String.t()
  @values %{
    wallet: "wallet",
    bank_account: "bank_account",
    dosh_account: "dosh_account"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.LineItemType do
  @moduledoc "Typed Inttegro LineItemType value."
  @type t :: :product | :fee | :shipping | String.t()
  @values %{
    product: "product",
    fee: "fee",
    shipping: "shipping"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.MessageTemplateChannel do
  @moduledoc "Typed Inttegro MessageTemplateChannel value."
  @type t :: :sms | :email | String.t()
  @values %{
    sms: "sms",
    email: "email"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.MessageTemplateStatus do
  @moduledoc "Typed Inttegro MessageTemplateStatus value."
  @type t :: :draft | :published | :archived | String.t()
  @values %{
    draft: "draft",
    published: "published",
    archived: "archived"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.MessageTemplateVariableItemType do
  @moduledoc "Typed Inttegro MessageTemplateVariableItemType value."
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
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.MessageTemplateVariableType do
  @moduledoc "Typed Inttegro MessageTemplateVariableType value."
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
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.MobileMoneyNetwork do
  @moduledoc "Typed Inttegro MobileMoneyNetwork value."
  @type t :: :airtel | :mtn | :telecel | :vodafone | String.t()
  @values %{
    airtel: "airtel",
    mtn: "mtn",
    telecel: "telecel",
    vodafone: "vodafone"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OTPAlphabetType do
  @moduledoc "Typed Inttegro OTPAlphabetType value."
  @type t :: :numeric | :alpha | :alphanumeric | String.t()
  @values %{
    numeric: "numeric",
    alpha: "alpha",
    alphanumeric: "alphanumeric"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OTPStatus do
  @moduledoc "Typed Inttegro OTPStatus value."
  @type t ::
          :canceled
          | :expired
          | :pending
          | :pending_delivery
          | :pending_verification
          | :verified
          | String.t()
  @values %{
    canceled: "canceled",
    expired: "expired",
    pending: "pending",
    pending_delivery: "pending_delivery",
    pending_verification: "pending_verification",
    verified: "verified"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OTPTransmissionStatus do
  @moduledoc "Typed Inttegro OTPTransmissionStatus value."
  @type t :: :delivered | :failed | :submitted | String.t()
  @values %{
    delivered: "delivered",
    failed: "failed",
    submitted: "submitted"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OTPVerificationVerdict do
  @moduledoc "Typed Inttegro OTPVerificationVerdict value."
  @type t :: :fail | :pass | String.t()
  @values %{
    fail: "fail",
    pass: "pass"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OrderCreatedFromResourceType do
  @moduledoc "Typed Inttegro OrderCreatedFromResourceType value."
  @type t :: :purchase_intent | String.t()
  @values %{
    purchase_intent: "purchase_intent"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OrderDocumentKind do
  @moduledoc "Typed Inttegro OrderDocumentKind value."
  @type t :: :invoice | :receipt | String.t()
  @values %{
    invoice: "invoice",
    receipt: "receipt"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.OrderStatus do
  @moduledoc "Typed Inttegro OrderStatus value."
  @type t ::
          :preparing
          | :requires_payment
          | :paid
          | :completed
          | :canceled
          | :expired
          | :unknown
          | String.t()
  @values %{
    preparing: "preparing",
    requires_payment: "requires_payment",
    paid: "paid",
    completed: "completed",
    canceled: "canceled",
    expired: "expired",
    unknown: "unknown"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentAttemptStatus do
  @moduledoc "Typed Inttegro PaymentAttemptStatus value."
  @type t ::
          :initiated
          | :executed
          | :succeeded
          | :canceled
          | :expired
          | :failed
          | :unknown
          | String.t()
  @values %{
    initiated: "initiated",
    executed: "executed",
    succeeded: "succeeded",
    canceled: "canceled",
    expired: "expired",
    failed: "failed",
    unknown: "unknown"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentConfirmationChannel do
  @moduledoc "Typed Inttegro PaymentConfirmationChannel value."
  @type t :: :sms | :email | :push | String.t()
  @values %{
    sms: "sms",
    email: "email",
    push: "push"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentMethodType do
  @moduledoc "Typed Inttegro PaymentMethodType value."
  @type t :: :mobile_money | :bank_account | :card | :motito | String.t()
  @values %{
    mobile_money: "mobile_money",
    bank_account: "bank_account",
    card: "card",
    motito: "motito"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentNextActionType do
  @moduledoc "Typed Inttegro PaymentNextActionType value."
  @type t :: :confirm_payment | :execute | :redirect | :authorize | :none | String.t()
  @values %{
    confirm_payment: "confirm_payment",
    execute: "execute",
    redirect: "redirect",
    authorize: "authorize",
    none: "none"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentResultStatus do
  @moduledoc "Typed Inttegro PaymentResultStatus value."
  @type t :: :pending | :requires_confirmation | :processing | :succeeded | :failed | String.t()
  @values %{
    pending: "pending",
    requires_confirmation: "requires_confirmation",
    processing: "processing",
    succeeded: "succeeded",
    failed: "failed"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PaymentStatus do
  @moduledoc "Typed Inttegro PaymentStatus value."
  @type t ::
          :initiated
          | :requires_action
          | :overdue
          | :executed
          | :paid
          | :canceled
          | :expired
          | :failed
          | :unknown
          | String.t()
  @values %{
    initiated: "initiated",
    requires_action: "requires_action",
    overdue: "overdue",
    executed: "executed",
    paid: "paid",
    canceled: "canceled",
    expired: "expired",
    failed: "failed",
    unknown: "unknown"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PayoutStatus do
  @moduledoc "Typed Inttegro PayoutStatus value."
  @type t ::
          :initialized
          | :scheduled
          | :processing
          | :executing
          | :succeeded
          | :invalid
          | :canceled
          | String.t()
  @values %{
    initialized: "initialized",
    scheduled: "scheduled",
    processing: "processing",
    executing: "executing",
    succeeded: "succeeded",
    invalid: "invalid",
    canceled: "canceled"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ProductShipmentInputType do
  @moduledoc "Typed Inttegro ProductShipmentInputType value."
  @type t :: :delivery | :download | :render | :stream | String.t()
  @values %{
    delivery: "delivery",
    download: "download",
    render: "render",
    stream: "stream"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ProductShipmentType do
  @moduledoc "Typed Inttegro ProductShipmentType value."
  @type t :: :delivery | :download | :render | :service | :stream | String.t()
  @values %{
    delivery: "delivery",
    download: "download",
    render: "render",
    service: "service",
    stream: "stream"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ProductType do
  @moduledoc "Typed Inttegro ProductType value."
  @type t :: :physical | :digital | :service | :voucher | :custom | :cause | String.t()
  @values %{
    physical: "physical",
    digital: "digital",
    service: "service",
    voucher: "voucher",
    custom: "custom",
    cause: "cause"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PurchaseIntentActivityType do
  @moduledoc "Typed Inttegro PurchaseIntentActivityType value."
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
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.PurchaseIntentStatus do
  @moduledoc "Typed Inttegro PurchaseIntentStatus value."
  @type t :: :active | :expired | :inactive | :used | String.t()
  @values %{
    active: "active",
    expired: "expired",
    inactive: "inactive",
    used: "used"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.RefundReason do
  @moduledoc "Typed Inttegro RefundReason value."
  @type t ::
          :requested_by_customer
          | :duplicate
          | :fraudulent
          | :order_canceled
          | :item_returned
          | :item_damaged
          | :item_not_received
          | :item_not_as_described
          | :custom
          | String.t()
  @values %{
    requested_by_customer: "requested_by_customer",
    duplicate: "duplicate",
    fraudulent: "fraudulent",
    order_canceled: "order_canceled",
    item_returned: "item_returned",
    item_damaged: "item_damaged",
    item_not_received: "item_not_received",
    item_not_as_described: "item_not_as_described",
    custom: "custom"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.RefundStatus do
  @moduledoc "Typed Inttegro RefundStatus value."
  @type t :: :canceled | :failed | :pending | :processing | :succeeded | String.t()
  @values %{
    canceled: "canceled",
    failed: "failed",
    pending: "pending",
    processing: "processing",
    succeeded: "succeeded"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.SecretKeyAuthResult do
  @moduledoc "Typed Inttegro SecretKeyAuthResult value."
  @type t :: :succeeded | :failed | String.t()
  @values %{
    succeeded: "succeeded",
    failed: "failed"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.SecretKeyStatus do
  @moduledoc "Typed Inttegro SecretKeyStatus value."
  @type t :: :active | :revoked | :expired | String.t()
  @values %{
    active: "active",
    revoked: "revoked",
    expired: "expired"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.SecretKeyTokenType do
  @moduledoc "Typed Inttegro SecretKeyTokenType value."
  @type t :: :bearer | String.t()
  @values %{
    bearer: "bearer"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.UploadRequestStatus do
  @moduledoc "Typed Inttegro UploadRequestStatus value."
  @type t :: :pending | :uploading | :fulfilled | :expired | :canceled | :failed | String.t()
  @values %{
    pending: "pending",
    uploading: "uploading",
    fulfilled: "fulfilled",
    expired: "expired",
    canceled: "canceled",
    failed: "failed"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.UploadReviewDecision do
  @moduledoc "Typed Inttegro UploadReviewDecision value."
  @type t :: :approved | :rejected | String.t()
  @values %{
    approved: "approved",
    rejected: "rejected"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.UploadReviewType do
  @moduledoc "Typed Inttegro UploadReviewType value."
  @type t :: :automatic | :manual | String.t()
  @values %{
    automatic: "automatic",
    manual: "manual"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.WalletType do
  @moduledoc "Typed Inttegro WalletType value."
  @type t :: :mobile_money | String.t()
  @values %{
    mobile_money: "mobile_money"
  }
  @spec values() :: [t()]
  def values, do: Map.keys(@values)
  @spec encode(t()) :: String.t()
  def encode(value) when is_atom(value), do: Map.fetch!(@values, value)
  def encode(value) when is_binary(value), do: value
  @spec decode(String.t()) :: t()
  def decode(value),
    do: Enum.find_value(@values, value, fn {key, wire} -> if wire == value, do: key end)
end

defmodule Inttegro.ChimeInlineRecipientInput do
  @moduledoc "Typed Inttegro ChimeInlineRecipientInput value."
  @type t ::
          Inttegro.ChimeInlineRecipientInputVariant1.t()
          | Inttegro.ChimeInlineRecipientInputVariant2.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.ChimeInlineRecipientInputVariant1,
        Inttegro.ChimeInlineRecipientInputVariant2
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

defmodule Inttegro.ChimeRecipientInput do
  @moduledoc "Typed Inttegro ChimeRecipientInput value."
  @type t ::
          Inttegro.ChimeInlineRecipientInputVariant1.t()
          | Inttegro.ChimeInlineRecipientInputVariant2.t()
          | Inttegro.ChimeSavedCustomerRecipientInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.ChimeInlineRecipientInputVariant1,
        Inttegro.ChimeInlineRecipientInputVariant2,
        Inttegro.ChimeSavedCustomerRecipientInput
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

defmodule Inttegro.CreateMessageTemplateRequest do
  @moduledoc "Typed Inttegro CreateMessageTemplateRequest value."
  @type t ::
          Inttegro.CreateSMSMessageTemplateRequest.t()
          | Inttegro.CreateEmailMessageTemplateRequest.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.CreateSMSMessageTemplateRequest,
        Inttegro.CreateEmailMessageTemplateRequest
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

defmodule Inttegro.CreateOrderRequest do
  @moduledoc "Typed Inttegro CreateOrderRequest value."
  @type t ::
          Inttegro.CreateOrderNewCustomerInput.t() | Inttegro.CreateOrderExistingCustomerInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.CreateOrderNewCustomerInput,
        Inttegro.CreateOrderExistingCustomerInput
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

defmodule Inttegro.FinancialAccountCreateRequest do
  @moduledoc "Typed Inttegro FinancialAccountCreateRequest value."
  @type t ::
          Inttegro.FinancialAccountWalletRequest.t()
          | Inttegro.FinancialAccountBankRequest.t()
          | Inttegro.FinancialAccountDoshRequest.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.FinancialAccountWalletRequest,
        Inttegro.FinancialAccountBankRequest,
        Inttegro.FinancialAccountDoshRequest
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

defmodule Inttegro.LineItemInput do
  @moduledoc "Typed Inttegro LineItemInput value."
  @type t ::
          Inttegro.ProductLineItemInput.t()
          | Inttegro.FeeLineItemInput.t()
          | Inttegro.ShippingLineItemInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.ProductLineItemInput,
        Inttegro.FeeLineItemInput,
        Inttegro.ShippingLineItemInput
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

defmodule Inttegro.MessageTemplateAttachmentIDs do
  @moduledoc "Typed Inttegro MessageTemplateAttachmentIDs value."
  @type t :: [String.t()]
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.MessageTemplateAttachmentIDsInput do
  @moduledoc "Typed Inttegro MessageTemplateAttachmentIDsInput value."
  @type t :: [String.t()]
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.MessageTemplateVariablesInput do
  @moduledoc "Typed Inttegro MessageTemplateVariablesInput value."
  @type t :: %{optional(String.t()) => term()}
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.OrderLineItem do
  @moduledoc "Typed Inttegro OrderLineItem value."
  @type t ::
          Inttegro.OrderProductLineItem.t()
          | Inttegro.OrderFeeLineItem.t()
          | Inttegro.OrderShippingLineItem.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.OrderProductLineItem,
        Inttegro.OrderFeeLineItem,
        Inttegro.OrderShippingLineItem
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

defmodule Inttegro.ProductDetailsInput do
  @moduledoc "Typed Inttegro ProductDetailsInput value."
  @type t ::
          Inttegro.InlineProductDetailsInput.t()
          | Inttegro.CatalogProductWithPriceDataInput.t()
          | Inttegro.CatalogProductWithPriceReferenceInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.InlineProductDetailsInput,
        Inttegro.CatalogProductWithPriceDataInput,
        Inttegro.CatalogProductWithPriceReferenceInput
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

defmodule Inttegro.RefundReasonInput do
  @moduledoc "Typed Inttegro RefundReasonInput value."
  @type t :: Inttegro.RefundReason.t()
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.RefundReasonValue do
  @moduledoc "Typed Inttegro RefundReasonValue value."
  @type t :: Inttegro.RefundReason.t()
  @spec decode(term()) :: t()
  def decode(value), do: value
end

defmodule Inttegro.ReviewUploadRequestAttemptRequest do
  @moduledoc "Typed Inttegro ReviewUploadRequestAttemptRequest value."
  @type t ::
          Inttegro.ReviewUploadRequestAttemptByIDRequest.t()
          | Inttegro.ReviewUploadRequestAttemptByOrdinalRequest.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.ReviewUploadRequestAttemptByIDRequest,
        Inttegro.ReviewUploadRequestAttemptByOrdinalRequest
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

defmodule Inttegro.BroadcastRequestMessageTemplate do
  @moduledoc "Typed Inttegro BroadcastRequestMessageTemplate value."
  @type t :: String.t() | Inttegro.MessageTemplateReferenceInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.MessageTemplateReferenceInput
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

defmodule Inttegro.ProductLineItemInputProduct do
  @moduledoc "Typed Inttegro ProductLineItemInputProduct value."
  @type t ::
          Inttegro.InlineProductDetailsInput.t()
          | Inttegro.CatalogProductWithPriceDataInput.t()
          | Inttegro.CatalogProductWithPriceReferenceInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.InlineProductDetailsInput,
        Inttegro.CatalogProductWithPriceDataInput,
        Inttegro.CatalogProductWithPriceReferenceInput
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

defmodule Inttegro.SendChimeRequestRecipient do
  @moduledoc "Typed Inttegro SendChimeRequestRecipient value."
  @type t ::
          Inttegro.ChimeInlineRecipientInputVariant1.t()
          | Inttegro.ChimeInlineRecipientInputVariant2.t()
          | Inttegro.ChimeSavedCustomerRecipientInput.t()

  @spec decode(term()) :: t()
  def decode(value) do
    Enum.find_value(
      [
        Inttegro.ChimeInlineRecipientInputVariant1,
        Inttegro.ChimeInlineRecipientInputVariant2,
        Inttegro.ChimeSavedCustomerRecipientInput
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

defmodule Inttegro.ActivatePaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct payment_method_id: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.AddProductPriceRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:product_id, :amount]
  defstruct label: nil, about: nil, product_id: nil, amount: nil

  @type t :: %__MODULE__{
          label: String.t() | nil,
          about: String.t() | nil,
          product_id: String.t(),
          amount: Inttegro.AmountParams.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      product_id: Map.fetch!(map, "product_id"),
      amount: Inttegro.AmountParams.from_map(Map.fetch!(map, "amount"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "product_id" => Inttegro.Codec.encode(value.product_id),
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.AddressInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :phone_number, :line1, :town, :country]
  defstruct line2: nil,
            region: nil,
            district: nil,
            post_code: nil,
            name: nil,
            phone_number: nil,
            line1: nil,
            town: nil,
            country: nil

  @type t :: %__MODULE__{
          line2: String.t() | nil,
          region: String.t() | nil,
          district: String.t() | nil,
          post_code: String.t() | nil,
          name: String.t(),
          phone_number: String.t(),
          line1: String.t(),
          town: String.t(),
          country: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region")),
      district: if(is_nil(Map.get(map, "district")), do: nil, else: Map.get(map, "district")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      name: Map.fetch!(map, "name"),
      phone_number: Map.fetch!(map, "phone_number"),
      line1: Map.fetch!(map, "line1"),
      town: Map.fetch!(map, "town"),
      country: Map.fetch!(map, "country")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region)),
      "district" =>
        if(is_nil(value.district), do: nil, else: Inttegro.Codec.encode(value.district)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "name" => Inttegro.Codec.encode(value.name),
      "phone_number" => Inttegro.Codec.encode(value.phone_number),
      "line1" => Inttegro.Codec.encode(value.line1),
      "town" => Inttegro.Codec.encode(value.town),
      "country" => Inttegro.Codec.encode(value.country)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Amount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @type t :: %__MODULE__{
          currency: Inttegro.Currency.t(),
          value: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.AmountParams do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @type t :: %__MODULE__{
          currency: Inttegro.Currency.t(),
          value: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Application do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :created_at]
  defstruct id: nil,
            name: nil,
            alias: nil,
            description: nil,
            created_at: nil,
            updated_at: nil,
            archived_at: nil,
            secret_key: nil,
            relationship: nil

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          alias: String.t() | nil,
          description: String.t() | nil,
          created_at: String.t(),
          updated_at: String.t() | nil,
          archived_at: String.t() | nil,
          secret_key: Inttegro.ApplicationSecretKey.t() | nil,
          relationship: Inttegro.ApplicationRelationship.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      alias: if(is_nil(Map.get(map, "alias")), do: nil, else: Map.get(map, "alias")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      created_at: Map.fetch!(map, "created_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at")),
      secret_key:
        if(is_nil(Map.get(map, "secret_key")),
          do: nil,
          else: Inttegro.ApplicationSecretKey.from_map(Map.get(map, "secret_key"))
        ),
      relationship:
        if(is_nil(Map.get(map, "relationship")),
          do: nil,
          else: Inttegro.ApplicationRelationship.from_map(Map.get(map, "relationship"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "alias" => if(is_nil(value.alias), do: nil, else: Inttegro.Codec.encode(value.alias)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at)),
      "secret_key" =>
        if(is_nil(value.secret_key), do: nil, else: Inttegro.Codec.encode(value.secret_key)),
      "relationship" =>
        if(is_nil(value.relationship), do: nil, else: Inttegro.Codec.encode(value.relationship))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ApplicationRelationship do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [
    :id,
    :kind,
    :policy_version,
    :status,
    :actor_app_id,
    :creator_app_id,
    :placement_parent_app_id,
    :subject_app_id,
    :child_app_id,
    :child_standing,
    :relationship_policy,
    :retained_creator_authority_exists,
    :created_at
  ]
  defstruct id: nil,
            kind: nil,
            policy_version: nil,
            status: nil,
            actor_app_id: nil,
            creator_app_id: nil,
            placement_parent_app_id: nil,
            subject_app_id: nil,
            child_app_id: nil,
            child_standing: nil,
            relationship_policy: nil,
            retained_creator_authority_exists: nil,
            created_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          kind: Inttegro.AppRelationshipKind.t(),
          policy_version: String.t(),
          status: Inttegro.AppRelationshipStatus.t(),
          actor_app_id: String.t(),
          creator_app_id: String.t(),
          placement_parent_app_id: String.t(),
          subject_app_id: String.t(),
          child_app_id: String.t(),
          child_standing: String.t(),
          relationship_policy: Inttegro.ApplicationRelationshipPolicy.t(),
          retained_creator_authority_exists: boolean(),
          created_at: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      kind: Inttegro.AppRelationshipKind.decode(Map.fetch!(map, "kind")),
      policy_version: Map.fetch!(map, "policy_version"),
      status: Inttegro.AppRelationshipStatus.decode(Map.fetch!(map, "status")),
      actor_app_id: Map.fetch!(map, "actor_app_id"),
      creator_app_id: Map.fetch!(map, "creator_app_id"),
      placement_parent_app_id: Map.fetch!(map, "placement_parent_app_id"),
      subject_app_id: Map.fetch!(map, "subject_app_id"),
      child_app_id: Map.fetch!(map, "child_app_id"),
      child_standing: Map.fetch!(map, "child_standing"),
      relationship_policy:
        Inttegro.ApplicationRelationshipPolicy.from_map(Map.fetch!(map, "relationship_policy")),
      retained_creator_authority_exists: Map.fetch!(map, "retained_creator_authority_exists"),
      created_at: Map.fetch!(map, "created_at")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "kind" => Inttegro.AppRelationshipKind.encode(value.kind),
      "policy_version" => Inttegro.Codec.encode(value.policy_version),
      "status" => Inttegro.AppRelationshipStatus.encode(value.status),
      "actor_app_id" => Inttegro.Codec.encode(value.actor_app_id),
      "creator_app_id" => Inttegro.Codec.encode(value.creator_app_id),
      "placement_parent_app_id" => Inttegro.Codec.encode(value.placement_parent_app_id),
      "subject_app_id" => Inttegro.Codec.encode(value.subject_app_id),
      "child_app_id" => Inttegro.Codec.encode(value.child_app_id),
      "child_standing" => Inttegro.Codec.encode(value.child_standing),
      "relationship_policy" => Inttegro.Codec.encode(value.relationship_policy),
      "retained_creator_authority_exists" =>
        Inttegro.Codec.encode(value.retained_creator_authority_exists),
      "created_at" => Inttegro.Codec.encode(value.created_at)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ApplicationRelationshipPolicy do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:child_standing, :management, :credentials]
  defstruct child_standing: nil, management: nil, credentials: nil

  @type t :: %__MODULE__{
          child_standing: String.t(),
          management: Inttegro.AppManagementRole.t(),
          credentials: Inttegro.AppCredentialOwner.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      child_standing: Map.fetch!(map, "child_standing"),
      management: Inttegro.AppManagementRole.decode(Map.fetch!(map, "management")),
      credentials: Inttegro.AppCredentialOwner.decode(Map.fetch!(map, "credentials"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "child_standing" => Inttegro.Codec.encode(value.child_standing),
      "management" => Inttegro.AppManagementRole.encode(value.management),
      "credentials" => Inttegro.AppCredentialOwner.encode(value.credentials)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ApplicationSecretKey do
  @moduledoc "Typed Inttegro domain value."
  defstruct id: nil, token_type: nil, issued_at: nil, token: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          token_type: String.t() | nil,
          issued_at: String.t() | nil,
          token: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      token_type:
        if(is_nil(Map.get(map, "token_type")), do: nil, else: Map.get(map, "token_type")),
      issued_at: if(is_nil(Map.get(map, "issued_at")), do: nil, else: Map.get(map, "issued_at")),
      token: if(is_nil(Map.get(map, "token")), do: nil, else: Map.get(map, "token"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "token_type" =>
        if(is_nil(value.token_type), do: nil, else: Inttegro.Codec.encode(value.token_type)),
      "issued_at" =>
        if(is_nil(value.issued_at), do: nil, else: Inttegro.Codec.encode(value.issued_at)),
      "token" => if(is_nil(value.token), do: nil, else: Inttegro.Codec.encode(value.token))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ArchivePaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct payment_method_id: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransaction do
  @moduledoc "Typed Inttegro domain value."
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
            refund_id: nil,
            type: nil

  @type t :: %__MODULE__{
          amount: Inttegro.BalanceTransactionAmount.t(),
          available_at: String.t() | nil,
          claimed_at: String.t() | nil,
          created_at: String.t(),
          id: String.t(),
          order_id: String.t(),
          paid_at: String.t() | nil,
          payment_id: String.t() | nil,
          payout_id: String.t() | nil,
          refund_id: String.t() | nil,
          type: Inttegro.BalanceTransactionType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Inttegro.BalanceTransactionAmount.from_map(Map.fetch!(map, "amount")),
      available_at:
        if(is_nil(Map.get(map, "available_at")), do: nil, else: Map.get(map, "available_at")),
      claimed_at:
        if(is_nil(Map.get(map, "claimed_at")), do: nil, else: Map.get(map, "claimed_at")),
      created_at: Map.fetch!(map, "created_at"),
      id: Map.fetch!(map, "id"),
      order_id: Map.fetch!(map, "order_id"),
      paid_at: if(is_nil(Map.get(map, "paid_at")), do: nil, else: Map.get(map, "paid_at")),
      payment_id:
        if(is_nil(Map.get(map, "payment_id")), do: nil, else: Map.get(map, "payment_id")),
      payout_id: if(is_nil(Map.get(map, "payout_id")), do: nil, else: Map.get(map, "payout_id")),
      refund_id: if(is_nil(Map.get(map, "refund_id")), do: nil, else: Map.get(map, "refund_id")),
      type: Inttegro.BalanceTransactionType.decode(Map.fetch!(map, "type"))
    }
  end

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
      "refund_id" =>
        if(is_nil(value.refund_id), do: nil, else: Inttegro.Codec.encode(value.refund_id)),
      "type" => Inttegro.BalanceTransactionType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BalanceTransactionAmount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @type t :: %__MODULE__{
          currency: String.t(),
          value: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Map.fetch!(map, "currency"),
      value: Map.fetch!(map, "value")
    }
  end

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

defmodule Inttegro.BalanceTransactionPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size]
  defstruct number: nil, size: nil, transactions: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          transactions: [Inttegro.BalanceTransaction.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.BalanceTransaction.from_map(item)
            end)
        )
    }
  end

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

defmodule Inttegro.BalanceValue do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:amount]
  defstruct amount: nil

  @type t :: %__MODULE__{
          amount: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BillingDetailsInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :email_address, :phone_number]
  defstruct address: nil, name: nil, email_address: nil, phone_number: nil

  @type t :: %__MODULE__{
          address: Inttegro.AddressInput.t() | nil,
          name: String.t(),
          email_address: String.t(),
          phone_number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address:
        if(is_nil(Map.get(map, "address")),
          do: nil,
          else: Inttegro.AddressInput.from_map(Map.get(map, "address"))
        ),
      name: Map.fetch!(map, "name"),
      email_address: Map.fetch!(map, "email_address"),
      phone_number: Map.fetch!(map, "phone_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address)),
      "name" => Inttegro.Codec.encode(value.name),
      "email_address" => Inttegro.Codec.encode(value.email_address),
      "phone_number" => Inttegro.Codec.encode(value.phone_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BroadcastCancelDetail do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          errors: [Inttegro.BroadcastError.t()] | nil,
          executed_at: String.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: String.t(),
          sender_id: String.t(),
          canceled_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item -> Inttegro.BroadcastError.from_map(item) end)
        ),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id"),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at"))
    }
  end

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

defmodule Inttegro.BroadcastCreationDetail do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:content, :created_at, :id, :recipients, :send_after, :sender_id]
  defstruct content: nil,
            created_at: nil,
            customer_ids: nil,
            email: nil,
            id: nil,
            idempotency_key: nil,
            purpose: nil,
            recipients: nil,
            send_after: nil,
            sender_id: nil

  @type t :: %__MODULE__{
          content: String.t(),
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: String.t(),
          sender_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      content: Map.fetch!(map, "content"),
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "content" => Inttegro.Codec.encode(value.content),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "customer_ids" =>
        if(is_nil(value.customer_ids),
          do: nil,
          else: Enum.map(value.customer_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
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

defmodule Inttegro.BroadcastDetail do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          errors: [Inttegro.BroadcastError.t()] | nil,
          executed_at: String.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: String.t(),
          sender_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item -> Inttegro.BroadcastError.from_map(item) end)
        ),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id")
    }
  end

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

defmodule Inttegro.BroadcastError do
  @moduledoc "Typed Inttegro domain value."
  defstruct recipient: nil, fix_code: nil, type: nil

  @type t :: %__MODULE__{
          recipient: String.t() | nil,
          fix_code: String.t() | nil,
          type: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient")),
      fix_code: if(is_nil(Map.get(map, "fix_code")), do: nil, else: Map.get(map, "fix_code")),
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type"))
    }
  end

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

defmodule Inttegro.BroadcastRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:recipients]
  defstruct request_meta: nil,
            message_template: nil,
            email: nil,
            purpose: nil,
            sender: nil,
            recipients: nil

  @type t :: %__MODULE__{
          request_meta: Inttegro.BroadcastRequestRequestMeta.t() | nil,
          message_template: Inttegro.BroadcastRequestMessageTemplate.t() | nil,
          email: Inttegro.ChimeEmailMessageInput.t() | nil,
          purpose: String.t() | nil,
          sender: String.t() | nil,
          recipients: [term()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else: Inttegro.BroadcastRequestRequestMeta.from_map(Map.get(map, "request_meta"))
        ),
      message_template:
        if(is_nil(Map.get(map, "message_template")),
          do: nil,
          else: Inttegro.BroadcastRequestMessageTemplate.decode(Map.get(map, "message_template"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessageInput.from_map(Map.get(map, "email"))
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      sender: if(is_nil(Map.get(map, "sender")), do: nil, else: Map.get(map, "sender")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "message_template" =>
        if(is_nil(value.message_template),
          do: nil,
          else: Inttegro.Codec.encode(value.message_template)
        ),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "sender" => if(is_nil(value.sender), do: nil, else: Inttegro.Codec.encode(value.sender)),
      "recipients" => Enum.map(value.recipients, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.BroadcastRequestRequestMeta do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelBroadcastRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:broadcast_id]
  defstruct broadcast_id: nil

  @type t :: %__MODULE__{
          broadcast_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      broadcast_id: Map.fetch!(map, "broadcast_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "broadcast_id" => Inttegro.Codec.encode(value.broadcast_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct reason: nil, execute_refund: nil, order_id: nil

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          execute_refund: boolean() | nil,
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reason: if(is_nil(Map.get(map, "reason")), do: nil, else: Map.get(map, "reason")),
      execute_refund:
        if(is_nil(Map.get(map, "execute_refund")), do: nil, else: Map.get(map, "execute_refund")),
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reason" => if(is_nil(value.reason), do: nil, else: Inttegro.Codec.encode(value.reason)),
      "execute_refund" =>
        if(is_nil(value.execute_refund),
          do: nil,
          else: Inttegro.Codec.encode(value.execute_refund)
        ),
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelPayoutRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payout_id]
  defstruct payout_id: nil

  @type t :: %__MODULE__{
          payout_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payout_id: Map.fetch!(map, "payout_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payout_id" => Inttegro.Codec.encode(value.payout_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelPurchaseIntentRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct id: nil, purchase_intent_id: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          purchase_intent_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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

defmodule Inttegro.CancelRefundRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:refund_id]
  defstruct request_meta: nil, refund_id: nil

  @type t :: %__MODULE__{
          request_meta: Inttegro.RefundRequestMetaInput.t() | nil,
          refund_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else: Inttegro.RefundRequestMetaInput.from_map(Map.get(map, "request_meta"))
        ),
      refund_id: Map.fetch!(map, "refund_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "refund_id" => Inttegro.Codec.encode(value.refund_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelScheduleRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:schedule_id]
  defstruct schedule_id: nil

  @type t :: %__MODULE__{
          schedule_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      schedule_id: Map.fetch!(map, "schedule_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "schedule_id" => Inttegro.Codec.encode(value.schedule_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CancelUploadRequestRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct canceled_by: nil, id: nil

  @type t :: %__MODULE__{
          canceled_by: Inttegro.FileActorInput.t() | nil,
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      canceled_by:
        if(is_nil(Map.get(map, "canceled_by")),
          do: nil,
          else: Inttegro.FileActorInput.from_map(Map.get(map, "canceled_by"))
        ),
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "canceled_by" =>
        if(is_nil(value.canceled_by), do: nil, else: Inttegro.Codec.encode(value.canceled_by)),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CatalogPrice do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :active, :nominal, :created_at]
  defstruct id: nil,
            label: nil,
            about: nil,
            active: nil,
            nominal: nil,
            product_id: nil,
            product: nil,
            created_at: nil,
            updated_at: nil,
            archived_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          about: String.t() | nil,
          active: boolean(),
          nominal: Inttegro.Amount.t(),
          product_id: String.t() | nil,
          product: Inttegro.PriceEmbeddedProduct.t() | nil,
          created_at: String.t(),
          updated_at: String.t() | nil,
          archived_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      active: Map.fetch!(map, "active"),
      nominal: Inttegro.Amount.from_map(Map.fetch!(map, "nominal")),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PriceEmbeddedProduct.from_map(Map.get(map, "product"))
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "active" => Inttegro.Codec.encode(value.active),
      "nominal" => Inttegro.Codec.encode(value.nominal),
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id)),
      "product" => if(is_nil(value.product), do: nil, else: Inttegro.Codec.encode(value.product)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CatalogPriceParams do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:amount]
  defstruct product_id: nil, label: nil, about: nil, amount: nil

  @type t :: %__MODULE__{
          product_id: String.t() | nil,
          label: String.t() | nil,
          about: String.t() | nil,
          amount: Inttegro.AmountParams.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      amount: Inttegro.AmountParams.from_map(Map.fetch!(map, "amount"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CatalogProductWithPriceDataInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:price, :product_id, :quantity]
  defstruct price: nil, product_id: nil, quantity: nil

  @type t :: %__MODULE__{
          price: Inttegro.PriceParams.t(),
          product_id: String.t(),
          quantity: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      price: Inttegro.PriceParams.from_map(Map.fetch!(map, "price")),
      product_id: Map.fetch!(map, "product_id"),
      quantity: Map.fetch!(map, "quantity")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "price" => Inttegro.Codec.encode(value.price),
      "product_id" => Inttegro.Codec.encode(value.product_id),
      "quantity" => Inttegro.Codec.encode(value.quantity)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CatalogProductWithPriceReferenceInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:price_id, :product_id, :quantity]
  defstruct price_id: nil, product_id: nil, quantity: nil

  @type t :: %__MODULE__{
          price_id: String.t(),
          product_id: String.t(),
          quantity: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      price_id: Map.fetch!(map, "price_id"),
      product_id: Map.fetch!(map, "product_id"),
      quantity: Map.fetch!(map, "quantity")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "price_id" => Inttegro.Codec.encode(value.price_id),
      "product_id" => Inttegro.Codec.encode(value.product_id),
      "quantity" => Inttegro.Codec.encode(value.quantity)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Chime do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :full_message, :id, :recipient, :sender_id]
  defstruct created_at: nil,
            custom_data: nil,
            customer_id: nil,
            email: nil,
            full_message: nil,
            id: nil,
            idempotency_key: nil,
            purpose: nil,
            recipient: nil,
            sender_id: nil,
            transmission: nil

  @type t :: %__MODULE__{
          created_at: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          customer_id: String.t() | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          full_message: String.t(),
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipient: Inttegro.ChimeRecipient.t(),
          sender_id: String.t(),
          transmission: Inttegro.ChimeTransmission.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      customer_id:
        if(is_nil(Map.get(map, "customer_id")), do: nil, else: Map.get(map, "customer_id")),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      full_message: Map.fetch!(map, "full_message"),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipient: Inttegro.ChimeRecipient.from_map(Map.fetch!(map, "recipient")),
      sender_id: Map.fetch!(map, "sender_id"),
      transmission:
        if(is_nil(Map.get(map, "transmission")),
          do: nil,
          else: Inttegro.ChimeTransmission.from_map(Map.get(map, "transmission"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "customer_id" =>
        if(is_nil(value.customer_id), do: nil, else: Inttegro.Codec.encode(value.customer_id)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "full_message" => Inttegro.Codec.encode(value.full_message),
      "id" => Inttegro.Codec.encode(value.id),
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "sender_id" => Inttegro.Codec.encode(value.sender_id),
      "transmission" =>
        if(is_nil(value.transmission), do: nil, else: Inttegro.Codec.encode(value.transmission))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailEvent do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :occurred_at, :provider, :provider_message_id, :type]
  defstruct bounce_sub_type: nil,
            bounce_type: nil,
            complaint_sub_type: nil,
            id: nil,
            occurred_at: nil,
            provider: nil,
            provider_message_id: nil,
            reason: nil,
            reason_code: nil,
            recipient: nil,
            source: nil,
            suppress_recipient: nil,
            temporary: nil,
            type: nil

  @type t :: %__MODULE__{
          bounce_sub_type: String.t() | nil,
          bounce_type: String.t() | nil,
          complaint_sub_type: String.t() | nil,
          id: String.t(),
          occurred_at: String.t(),
          provider: String.t(),
          provider_message_id: String.t(),
          reason: String.t() | nil,
          reason_code: String.t() | nil,
          recipient: String.t() | nil,
          source: String.t() | nil,
          suppress_recipient: boolean() | nil,
          temporary: boolean() | nil,
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bounce_sub_type:
        if(is_nil(Map.get(map, "bounce_sub_type")),
          do: nil,
          else: Map.get(map, "bounce_sub_type")
        ),
      bounce_type:
        if(is_nil(Map.get(map, "bounce_type")), do: nil, else: Map.get(map, "bounce_type")),
      complaint_sub_type:
        if(is_nil(Map.get(map, "complaint_sub_type")),
          do: nil,
          else: Map.get(map, "complaint_sub_type")
        ),
      id: Map.fetch!(map, "id"),
      occurred_at: Map.fetch!(map, "occurred_at"),
      provider: Map.fetch!(map, "provider"),
      provider_message_id: Map.fetch!(map, "provider_message_id"),
      reason: if(is_nil(Map.get(map, "reason")), do: nil, else: Map.get(map, "reason")),
      reason_code:
        if(is_nil(Map.get(map, "reason_code")), do: nil, else: Map.get(map, "reason_code")),
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient")),
      source: if(is_nil(Map.get(map, "source")), do: nil, else: Map.get(map, "source")),
      suppress_recipient:
        if(is_nil(Map.get(map, "suppress_recipient")),
          do: nil,
          else: Map.get(map, "suppress_recipient")
        ),
      temporary: if(is_nil(Map.get(map, "temporary")), do: nil, else: Map.get(map, "temporary")),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bounce_sub_type" =>
        if(is_nil(value.bounce_sub_type),
          do: nil,
          else: Inttegro.Codec.encode(value.bounce_sub_type)
        ),
      "bounce_type" =>
        if(is_nil(value.bounce_type), do: nil, else: Inttegro.Codec.encode(value.bounce_type)),
      "complaint_sub_type" =>
        if(is_nil(value.complaint_sub_type),
          do: nil,
          else: Inttegro.Codec.encode(value.complaint_sub_type)
        ),
      "id" => Inttegro.Codec.encode(value.id),
      "occurred_at" => Inttegro.Codec.encode(value.occurred_at),
      "provider" => Inttegro.Codec.encode(value.provider),
      "provider_message_id" => Inttegro.Codec.encode(value.provider_message_id),
      "reason" => if(is_nil(value.reason), do: nil, else: Inttegro.Codec.encode(value.reason)),
      "reason_code" =>
        if(is_nil(value.reason_code), do: nil, else: Inttegro.Codec.encode(value.reason_code)),
      "recipient" =>
        if(is_nil(value.recipient), do: nil, else: Inttegro.Codec.encode(value.recipient)),
      "source" => if(is_nil(value.source), do: nil, else: Inttegro.Codec.encode(value.source)),
      "suppress_recipient" =>
        if(is_nil(value.suppress_recipient),
          do: nil,
          else: Inttegro.Codec.encode(value.suppress_recipient)
        ),
      "temporary" =>
        if(is_nil(value.temporary), do: nil, else: Inttegro.Codec.encode(value.temporary)),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailMailbox do
  @moduledoc "Typed Inttegro domain value."
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address: if(is_nil(Map.get(map, "address")), do: nil, else: Map.get(map, "address"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailMailboxInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address: if(is_nil(Map.get(map, "address")), do: nil, else: Map.get(map, "address"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailMessage do
  @moduledoc "Typed Inttegro domain value."
  defstruct subject: nil,
            text: nil,
            html: nil,
            from_: nil,
            reply_to: nil,
            headers: nil,
            safety: nil,
            schema: nil

  @type t :: %__MODULE__{
          subject: String.t() | nil,
          text: String.t() | nil,
          html: String.t() | nil,
          from_: Inttegro.ChimeEmailMailbox.t() | nil,
          reply_to: Inttegro.ChimeEmailMailbox.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          safety: Inttegro.ChimeEmailSafetyResult.t() | nil,
          schema: Inttegro.ChimeEmailSchemaMarkup.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      subject: if(is_nil(Map.get(map, "subject")), do: nil, else: Map.get(map, "subject")),
      text: if(is_nil(Map.get(map, "text")), do: nil, else: Map.get(map, "text")),
      html: if(is_nil(Map.get(map, "html")), do: nil, else: Map.get(map, "html")),
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.ChimeEmailMailbox.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.ChimeEmailMailbox.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        ),
      safety:
        if(is_nil(Map.get(map, "safety")),
          do: nil,
          else: Inttegro.ChimeEmailSafetyResult.from_map(Map.get(map, "safety"))
        ),
      schema:
        if(is_nil(Map.get(map, "schema")),
          do: nil,
          else: Inttegro.ChimeEmailSchemaMarkup.from_map(Map.get(map, "schema"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "subject" => if(is_nil(value.subject), do: nil, else: Inttegro.Codec.encode(value.subject)),
      "text" => if(is_nil(value.text), do: nil, else: Inttegro.Codec.encode(value.text)),
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
      "safety" => if(is_nil(value.safety), do: nil, else: Inttegro.Codec.encode(value.safety)),
      "schema" => if(is_nil(value.schema), do: nil, else: Inttegro.Codec.encode(value.schema))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailMessageInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:subject, :text, :from_]
  defstruct html: nil, reply_to: nil, headers: nil, subject: nil, text: nil, from_: nil

  @type t :: %__MODULE__{
          html: String.t() | nil,
          reply_to: String.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          subject: String.t(),
          text: String.t(),
          from_: Inttegro.ChimeEmailMailboxInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      html: if(is_nil(Map.get(map, "html")), do: nil, else: Map.get(map, "html")),
      reply_to: if(is_nil(Map.get(map, "reply_to")), do: nil, else: Map.get(map, "reply_to")),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        ),
      subject: Map.fetch!(map, "subject"),
      text: Map.fetch!(map, "text"),
      from_: Inttegro.ChimeEmailMailboxInput.from_map(Map.fetch!(map, "from"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "html" => if(is_nil(value.html), do: nil, else: Inttegro.Codec.encode(value.html)),
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
      "text" => Inttegro.Codec.encode(value.text),
      "from" => Inttegro.Codec.encode(value.from_)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailSafetyResult do
  @moduledoc "Typed Inttegro domain value."
  defstruct status: nil,
            reason_codes: nil,
            sanitized_html: nil,
            normalized_text: nil,
            links: nil,
            scanner: nil,
            content_hash: nil,
            quarantine_notes: nil

  @type t :: %__MODULE__{
          status: Inttegro.ContentSafetyStatus.t() | nil,
          reason_codes: [String.t()] | nil,
          sanitized_html: String.t() | nil,
          normalized_text: String.t() | nil,
          links: [Inttegro.ChimeEmailScannedLink.t()] | nil,
          scanner: String.t() | nil,
          content_hash: String.t() | nil,
          quarantine_notes: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.ContentSafetyStatus.decode(Map.get(map, "status"))
        ),
      reason_codes:
        if(is_nil(Map.get(map, "reason_codes")),
          do: nil,
          else: Enum.map(Map.get(map, "reason_codes"), fn item -> item end)
        ),
      sanitized_html:
        if(is_nil(Map.get(map, "sanitized_html")), do: nil, else: Map.get(map, "sanitized_html")),
      normalized_text:
        if(is_nil(Map.get(map, "normalized_text")),
          do: nil,
          else: Map.get(map, "normalized_text")
        ),
      links:
        if(is_nil(Map.get(map, "links")),
          do: nil,
          else:
            Enum.map(Map.get(map, "links"), fn item ->
              Inttegro.ChimeEmailScannedLink.from_map(item)
            end)
        ),
      scanner: if(is_nil(Map.get(map, "scanner")), do: nil, else: Map.get(map, "scanner")),
      content_hash:
        if(is_nil(Map.get(map, "content_hash")), do: nil, else: Map.get(map, "content_hash")),
      quarantine_notes:
        if(is_nil(Map.get(map, "quarantine_notes")),
          do: nil,
          else: Map.get(map, "quarantine_notes")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "status" =>
        if(is_nil(value.status), do: nil, else: Inttegro.ContentSafetyStatus.encode(value.status)),
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
      "normalized_text" =>
        if(is_nil(value.normalized_text),
          do: nil,
          else: Inttegro.Codec.encode(value.normalized_text)
        ),
      "links" =>
        if(is_nil(value.links),
          do: nil,
          else: Enum.map(value.links, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "scanner" => if(is_nil(value.scanner), do: nil, else: Inttegro.Codec.encode(value.scanner)),
      "content_hash" =>
        if(is_nil(value.content_hash), do: nil, else: Inttegro.Codec.encode(value.content_hash)),
      "quarantine_notes" =>
        if(is_nil(value.quarantine_notes),
          do: nil,
          else: Inttegro.Codec.encode(value.quarantine_notes)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailScannedLink do
  @moduledoc "Typed Inttegro domain value."
  defstruct raw: nil, scheme: nil, host: nil, status: nil, reason: nil

  @type t :: %__MODULE__{
          raw: String.t() | nil,
          scheme: String.t() | nil,
          host: String.t() | nil,
          status: Inttegro.ContentSafetyStatus.t() | nil,
          reason: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      raw: if(is_nil(Map.get(map, "raw")), do: nil, else: Map.get(map, "raw")),
      scheme: if(is_nil(Map.get(map, "scheme")), do: nil, else: Map.get(map, "scheme")),
      host: if(is_nil(Map.get(map, "host")), do: nil, else: Map.get(map, "host")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.ContentSafetyStatus.decode(Map.get(map, "status"))
        ),
      reason: if(is_nil(Map.get(map, "reason")), do: nil, else: Map.get(map, "reason"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "raw" => if(is_nil(value.raw), do: nil, else: Inttegro.Codec.encode(value.raw)),
      "scheme" => if(is_nil(value.scheme), do: nil, else: Inttegro.Codec.encode(value.scheme)),
      "host" => if(is_nil(value.host), do: nil, else: Inttegro.Codec.encode(value.host)),
      "status" =>
        if(is_nil(value.status), do: nil, else: Inttegro.ContentSafetyStatus.encode(value.status)),
      "reason" => if(is_nil(value.reason), do: nil, else: Inttegro.Codec.encode(value.reason))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeEmailSchemaMarkup do
  @moduledoc "Typed Inttegro domain value."
  defstruct kind: nil, json_ld: nil

  @type t :: %__MODULE__{
          kind: Inttegro.ChimeEmailSchemaKind.t() | nil,
          json_ld: %{optional(String.t()) => term()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      kind:
        if(is_nil(Map.get(map, "kind")),
          do: nil,
          else: Inttegro.ChimeEmailSchemaKind.decode(Map.get(map, "kind"))
        ),
      json_ld:
        if(is_nil(Map.get(map, "json_ld")),
          do: nil,
          else: Map.new(Map.get(map, "json_ld"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "kind" =>
        if(is_nil(value.kind), do: nil, else: Inttegro.ChimeEmailSchemaKind.encode(value.kind)),
      "json_ld" =>
        if(is_nil(value.json_ld),
          do: nil,
          else:
            Map.new(value.json_ld, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeInlineRecipientInputVariant1 do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:phone, :type]
  defstruct name: nil, phone: nil, type: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          phone: Inttegro.ChimeInlineRecipientInputVariant1Phone.t(),
          type: Inttegro.ChimeRecipientType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone: Inttegro.ChimeInlineRecipientInputVariant1Phone.from_map(Map.fetch!(map, "phone")),
      type: Inttegro.ChimeRecipientType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone" => Inttegro.Codec.encode(value.phone),
      "type" => Inttegro.ChimeRecipientType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeInlineRecipientInputVariant1Phone do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:number]
  defstruct number: nil

  @type t :: %__MODULE__{
          number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeInlineRecipientInputVariant2 do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:email, :type]
  defstruct name: nil, email: nil, type: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          email: Inttegro.ChimeInlineRecipientInputVariant2Email.t(),
          type: Inttegro.ChimeRecipientType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      email: Inttegro.ChimeInlineRecipientInputVariant2Email.from_map(Map.fetch!(map, "email")),
      type: Inttegro.ChimeRecipientType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "email" => Inttegro.Codec.encode(value.email),
      "type" => Inttegro.ChimeRecipientType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeInlineRecipientInputVariant2Email do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:address]
  defstruct address: nil

  @type t :: %__MODULE__{
          address: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Map.fetch!(map, "address")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimePage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :chimes]
  defstruct number: nil, size: nil, chimes: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          chimes: [Inttegro.Chime.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      chimes: Enum.map(Map.fetch!(map, "chimes"), fn item -> Inttegro.Chime.from_map(item) end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "chimes" => Enum.map(value.chimes, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeRecipient do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, name: nil, phone: nil, email: nil

  @type t :: %__MODULE__{
          type: Inttegro.ChimeRecipientType.t(),
          name: String.t() | nil,
          phone: Inttegro.ChimeRecipientPhone.t() | nil,
          email: Inttegro.ChimeRecipientEmail.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.ChimeRecipientType.decode(Map.fetch!(map, "type")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone:
        if(is_nil(Map.get(map, "phone")),
          do: nil,
          else: Inttegro.ChimeRecipientPhone.from_map(Map.get(map, "phone"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeRecipientEmail.from_map(Map.get(map, "email"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.ChimeRecipientType.encode(value.type),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone" => if(is_nil(value.phone), do: nil, else: Inttegro.Codec.encode(value.phone)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeRecipientEmail do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:address]
  defstruct address: nil

  @type t :: %__MODULE__{
          address: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Map.fetch!(map, "address")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeRecipientPhone do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number]
  defstruct number: nil

  @type t :: %__MODULE__{
          number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeSavedCustomerRecipientInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_id, :transport]
  defstruct customer_id: nil, transport: nil

  @type t :: %__MODULE__{
          customer_id: String.t(),
          transport: Inttegro.ChimeTransport.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      customer_id: Map.fetch!(map, "customer_id"),
      transport: Inttegro.ChimeTransport.decode(Map.fetch!(map, "transport"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "customer_id" => Inttegro.Codec.encode(value.customer_id),
      "transport" => Inttegro.ChimeTransport.encode(value.transport)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ChimeTransmission do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:address, :created_at, :gateway, :id, :initialized_at, :mechanism, :status]
  defstruct address: nil,
            created_at: nil,
            delivered_at: nil,
            email_events: nil,
            email_failure_code: nil,
            email_failure_reason: nil,
            email_status: nil,
            error: nil,
            failed_at: nil,
            gateway: nil,
            gateway_message_id: nil,
            id: nil,
            initialized_at: nil,
            last_email_event_at: nil,
            mechanism: nil,
            sent_at: nil,
            sent_via: nil,
            status: nil,
            suppressed_at: nil,
            suppression_reason: nil

  @type t :: %__MODULE__{
          address: String.t(),
          created_at: String.t(),
          delivered_at: String.t() | nil,
          email_events: [Inttegro.ChimeEmailEvent.t()] | nil,
          email_failure_code: String.t() | nil,
          email_failure_reason: String.t() | nil,
          email_status: String.t() | nil,
          error: String.t() | nil,
          failed_at: String.t() | nil,
          gateway: String.t(),
          gateway_message_id: String.t() | nil,
          id: String.t(),
          initialized_at: String.t(),
          last_email_event_at: String.t() | nil,
          mechanism: Inttegro.ChimeTransport.t(),
          sent_at: String.t() | nil,
          sent_via: Inttegro.ChimeTransport.t() | nil,
          status: String.t(),
          suppressed_at: String.t() | nil,
          suppression_reason: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Map.fetch!(map, "address"),
      created_at: Map.fetch!(map, "created_at"),
      delivered_at:
        if(is_nil(Map.get(map, "delivered_at")), do: nil, else: Map.get(map, "delivered_at")),
      email_events:
        if(is_nil(Map.get(map, "email_events")),
          do: nil,
          else:
            Enum.map(Map.get(map, "email_events"), fn item ->
              Inttegro.ChimeEmailEvent.from_map(item)
            end)
        ),
      email_failure_code:
        if(is_nil(Map.get(map, "email_failure_code")),
          do: nil,
          else: Map.get(map, "email_failure_code")
        ),
      email_failure_reason:
        if(is_nil(Map.get(map, "email_failure_reason")),
          do: nil,
          else: Map.get(map, "email_failure_reason")
        ),
      email_status:
        if(is_nil(Map.get(map, "email_status")), do: nil, else: Map.get(map, "email_status")),
      error: if(is_nil(Map.get(map, "error")), do: nil, else: Map.get(map, "error")),
      failed_at: if(is_nil(Map.get(map, "failed_at")), do: nil, else: Map.get(map, "failed_at")),
      gateway: Map.fetch!(map, "gateway"),
      gateway_message_id:
        if(is_nil(Map.get(map, "gateway_message_id")),
          do: nil,
          else: Map.get(map, "gateway_message_id")
        ),
      id: Map.fetch!(map, "id"),
      initialized_at: Map.fetch!(map, "initialized_at"),
      last_email_event_at:
        if(is_nil(Map.get(map, "last_email_event_at")),
          do: nil,
          else: Map.get(map, "last_email_event_at")
        ),
      mechanism: Inttegro.ChimeTransport.decode(Map.fetch!(map, "mechanism")),
      sent_at: if(is_nil(Map.get(map, "sent_at")), do: nil, else: Map.get(map, "sent_at")),
      sent_via:
        if(is_nil(Map.get(map, "sent_via")),
          do: nil,
          else: Inttegro.ChimeTransport.decode(Map.get(map, "sent_via"))
        ),
      status: Map.fetch!(map, "status"),
      suppressed_at:
        if(is_nil(Map.get(map, "suppressed_at")), do: nil, else: Map.get(map, "suppressed_at")),
      suppression_reason:
        if(is_nil(Map.get(map, "suppression_reason")),
          do: nil,
          else: Map.get(map, "suppression_reason")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "delivered_at" =>
        if(is_nil(value.delivered_at), do: nil, else: Inttegro.Codec.encode(value.delivered_at)),
      "email_events" =>
        if(is_nil(value.email_events),
          do: nil,
          else: Enum.map(value.email_events, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "email_failure_code" =>
        if(is_nil(value.email_failure_code),
          do: nil,
          else: Inttegro.Codec.encode(value.email_failure_code)
        ),
      "email_failure_reason" =>
        if(is_nil(value.email_failure_reason),
          do: nil,
          else: Inttegro.Codec.encode(value.email_failure_reason)
        ),
      "email_status" =>
        if(is_nil(value.email_status), do: nil, else: Inttegro.Codec.encode(value.email_status)),
      "error" => if(is_nil(value.error), do: nil, else: Inttegro.Codec.encode(value.error)),
      "failed_at" =>
        if(is_nil(value.failed_at), do: nil, else: Inttegro.Codec.encode(value.failed_at)),
      "gateway" => Inttegro.Codec.encode(value.gateway),
      "gateway_message_id" =>
        if(is_nil(value.gateway_message_id),
          do: nil,
          else: Inttegro.Codec.encode(value.gateway_message_id)
        ),
      "id" => Inttegro.Codec.encode(value.id),
      "initialized_at" => Inttegro.Codec.encode(value.initialized_at),
      "last_email_event_at" =>
        if(is_nil(value.last_email_event_at),
          do: nil,
          else: Inttegro.Codec.encode(value.last_email_event_at)
        ),
      "mechanism" => Inttegro.ChimeTransport.encode(value.mechanism),
      "sent_at" => if(is_nil(value.sent_at), do: nil, else: Inttegro.Codec.encode(value.sent_at)),
      "sent_via" =>
        if(is_nil(value.sent_via), do: nil, else: Inttegro.ChimeTransport.encode(value.sent_via)),
      "status" => Inttegro.Codec.encode(value.status),
      "suppressed_at" =>
        if(is_nil(value.suppressed_at), do: nil, else: Inttegro.Codec.encode(value.suppressed_at)),
      "suppression_reason" =>
        if(is_nil(value.suppression_reason),
          do: nil,
          else: Inttegro.Codec.encode(value.suppression_reason)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CompleteOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct paid_out_of_band: nil, order_id: nil

  @type t :: %__MODULE__{
          paid_out_of_band: boolean() | nil,
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      paid_out_of_band:
        if(is_nil(Map.get(map, "paid_out_of_band")),
          do: nil,
          else: Map.get(map, "paid_out_of_band")
        ),
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "paid_out_of_band" =>
        if(is_nil(value.paid_out_of_band),
          do: nil,
          else: Inttegro.Codec.encode(value.paid_out_of_band)
        ),
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ConfirmPaymentRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id, :payment_id, :confirmation_id, :token]
  defstruct order_id: nil, payment_id: nil, confirmation_id: nil, token: nil

  @type t :: %__MODULE__{
          order_id: String.t(),
          payment_id: String.t(),
          confirmation_id: String.t(),
          token: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      order_id: Map.fetch!(map, "order_id"),
      payment_id: Map.fetch!(map, "payment_id"),
      confirmation_id: Map.fetch!(map, "confirmation_id"),
      token: Map.fetch!(map, "token")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "order_id" => Inttegro.Codec.encode(value.order_id),
      "payment_id" => Inttegro.Codec.encode(value.payment_id),
      "confirmation_id" => Inttegro.Codec.encode(value.confirmation_id),
      "token" => Inttegro.Codec.encode(value.token)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CountryBank do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :branches]
  defstruct id: nil, name: nil, swift_code: nil, sort_code_prefix: nil, branches: nil

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          swift_code: String.t() | nil,
          sort_code_prefix: String.t() | nil,
          branches: [Inttegro.CountryBankBranch.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
          Inttegro.CountryBankBranch.from_map(item)
        end)
    }
  end

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

defmodule Inttegro.CountryBankBranch do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :sort_code]
  defstruct id: nil, name: nil, sort_code: nil

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          sort_code: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      sort_code: Map.fetch!(map, "sort_code")
    }
  end

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

defmodule Inttegro.CountryBankDirectory do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:bank_account_type, :code_scheme, :items]
  defstruct bank_account_type: nil, code_scheme: nil, items: nil

  @type t :: %__MODULE__{
          bank_account_type: String.t(),
          code_scheme: String.t(),
          items: [Inttegro.CountryBank.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bank_account_type: Map.fetch!(map, "bank_account_type"),
      code_scheme: Map.fetch!(map, "code_scheme"),
      items:
        Enum.map(Map.fetch!(map, "items"), fn item -> Inttegro.CountryBank.from_map(item) end)
    }
  end

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

defmodule Inttegro.CountrySpecification do
  @moduledoc "Typed Inttegro domain value."
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
          banks: Inttegro.CountryBankDirectory.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
          else: Inttegro.CountryBankDirectory.from_map(Map.get(map, "banks"))
        )
    }
  end

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

defmodule Inttegro.CreateApplicationRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name]
  defstruct alias: nil,
            description: nil,
            legal_entity_type: nil,
            placement_parent_application_id: nil,
            relationship_policy: nil,
            name: nil

  @type t :: %__MODULE__{
          alias: String.t() | nil,
          description: String.t() | nil,
          legal_entity_type: String.t() | nil,
          placement_parent_application_id: String.t() | nil,
          relationship_policy: Inttegro.CreateApplicationRequestRelationshipPolicy.t() | nil,
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      alias: if(is_nil(Map.get(map, "alias")), do: nil, else: Map.get(map, "alias")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      legal_entity_type:
        if(is_nil(Map.get(map, "legal_entity_type")),
          do: nil,
          else: Map.get(map, "legal_entity_type")
        ),
      placement_parent_application_id:
        if(is_nil(Map.get(map, "placement_parent_application_id")),
          do: nil,
          else: Map.get(map, "placement_parent_application_id")
        ),
      relationship_policy:
        if(is_nil(Map.get(map, "relationship_policy")),
          do: nil,
          else:
            Inttegro.CreateApplicationRequestRelationshipPolicy.from_map(
              Map.get(map, "relationship_policy")
            )
        ),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "alias" => if(is_nil(value.alias), do: nil, else: Inttegro.Codec.encode(value.alias)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "legal_entity_type" =>
        if(is_nil(value.legal_entity_type),
          do: nil,
          else: Inttegro.Codec.encode(value.legal_entity_type)
        ),
      "placement_parent_application_id" =>
        if(is_nil(value.placement_parent_application_id),
          do: nil,
          else: Inttegro.Codec.encode(value.placement_parent_application_id)
        ),
      "relationship_policy" =>
        if(is_nil(value.relationship_policy),
          do: nil,
          else: Inttegro.Codec.encode(value.relationship_policy)
        ),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateApplicationRequestRelationshipPolicy do
  @moduledoc "Typed Inttegro request parameters."
  defstruct child_standing: nil, management: nil, credentials: nil

  @type t :: %__MODULE__{
          child_standing: String.t() | nil,
          management: Inttegro.AppManagementRole.t() | nil,
          credentials: Inttegro.AppCredentialOwner.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      child_standing:
        if(is_nil(Map.get(map, "child_standing")), do: nil, else: Map.get(map, "child_standing")),
      management:
        if(is_nil(Map.get(map, "management")),
          do: nil,
          else: Inttegro.AppManagementRole.decode(Map.get(map, "management"))
        ),
      credentials:
        if(is_nil(Map.get(map, "credentials")),
          do: nil,
          else: Inttegro.AppCredentialOwner.decode(Map.get(map, "credentials"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "child_standing" =>
        if(is_nil(value.child_standing),
          do: nil,
          else: Inttegro.Codec.encode(value.child_standing)
        ),
      "management" =>
        if(is_nil(value.management),
          do: nil,
          else: Inttegro.AppManagementRole.encode(value.management)
        ),
      "credentials" =>
        if(is_nil(value.credentials),
          do: nil,
          else: Inttegro.AppCredentialOwner.encode(value.credentials)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateCustomerRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name]
  defstruct billing_address: nil,
            custom_data: nil,
            email_address: nil,
            phone_number: nil,
            reference: nil,
            shipping_address: nil,
            title: nil,
            name: nil

  @type t :: %__MODULE__{
          billing_address: Inttegro.CustomerAddressInput.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          email_address: String.t() | nil,
          phone_number: String.t() | nil,
          reference: String.t() | nil,
          shipping_address: Inttegro.CustomerAddressInput.t() | nil,
          title: String.t() | nil,
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      billing_address:
        if(is_nil(Map.get(map, "billing_address")),
          do: nil,
          else: Inttegro.CustomerAddressInput.from_map(Map.get(map, "billing_address"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      email_address:
        if(is_nil(Map.get(map, "email_address")), do: nil, else: Map.get(map, "email_address")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      shipping_address:
        if(is_nil(Map.get(map, "shipping_address")),
          do: nil,
          else: Inttegro.CustomerAddressInput.from_map(Map.get(map, "shipping_address"))
        ),
      title: if(is_nil(Map.get(map, "title")), do: nil, else: Map.get(map, "title")),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "billing_address" =>
        if(is_nil(value.billing_address),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_address)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "email_address" =>
        if(is_nil(value.email_address), do: nil, else: Inttegro.Codec.encode(value.email_address)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "shipping_address" =>
        if(is_nil(value.shipping_address),
          do: nil,
          else: Inttegro.Codec.encode(value.shipping_address)
        ),
      "title" => if(is_nil(value.title), do: nil, else: Inttegro.Codec.encode(value.title)),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateEmailMessageTemplateRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:channel, :email, :name, :purpose]
  defstruct about: nil,
            attachments: nil,
            locale: nil,
            variables: nil,
            channel: nil,
            email: nil,
            name: nil,
            purpose: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          attachments: [String.t()] | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplateVariableInput.t()] | nil,
          channel: Inttegro.MessageTemplateChannel.t(),
          email: Inttegro.MessageTemplateEmailContentInput.t(),
          name: String.t(),
          purpose: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.MessageTemplateVariableInput.from_map(item)
            end)
        ),
      channel: Inttegro.MessageTemplateChannel.decode(Map.fetch!(map, "channel")),
      email: Inttegro.MessageTemplateEmailContentInput.from_map(Map.fetch!(map, "email")),
      name: Map.fetch!(map, "name"),
      purpose: Map.fetch!(map, "purpose")
    }
  end

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
      "channel" => Inttegro.MessageTemplateChannel.encode(value.channel),
      "email" => Inttegro.Codec.encode(value.email),
      "name" => Inttegro.Codec.encode(value.name),
      "purpose" => Inttegro.Codec.encode(value.purpose)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateFileLinkRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:file_id]
  defstruct delivery: nil,
            access: nil,
            created_by: nil,
            custom_data: nil,
            expires_at: nil,
            file_id: nil

  @type t :: %__MODULE__{
          delivery: Inttegro.FileLinkDeliveryInput.t() | nil,
          access: Inttegro.FileLinkAccessRequest.t() | nil,
          created_by: Inttegro.FileActorInput.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          expires_at: String.t() | nil,
          file_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Inttegro.FileLinkDeliveryInput.from_map(Map.get(map, "delivery"))
        ),
      access:
        if(is_nil(Map.get(map, "access")),
          do: nil,
          else: Inttegro.FileLinkAccessRequest.from_map(Map.get(map, "access"))
        ),
      created_by:
        if(is_nil(Map.get(map, "created_by")),
          do: nil,
          else: Inttegro.FileActorInput.from_map(Map.get(map, "created_by"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      file_id: Map.fetch!(map, "file_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "delivery" =>
        if(is_nil(value.delivery), do: nil, else: Inttegro.Codec.encode(value.delivery)),
      "access" => if(is_nil(value.access), do: nil, else: Inttegro.Codec.encode(value.access)),
      "created_by" =>
        if(is_nil(value.created_by), do: nil, else: Inttegro.Codec.encode(value.created_by)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "file_id" => Inttegro.Codec.encode(value.file_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderExistingCustomerInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_id, :line_items]
  defstruct payment_method_id: nil,
            payment_method_data: nil,
            receipt_number: nil,
            statement_descriptor: nil,
            statement_descriptor_prefix: nil,
            execute_payment: nil,
            finalize: nil,
            request_meta: nil,
            checkout_settings: nil,
            invoice_settings: nil,
            payout_settings: nil,
            custom_data: nil,
            billing_details: nil,
            shipping: nil,
            customer_id: nil,
            line_items: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t() | nil,
          payment_method_data: Inttegro.PaymentMethodDataInput.t() | nil,
          receipt_number: String.t() | nil,
          statement_descriptor: String.t() | nil,
          statement_descriptor_prefix: String.t() | nil,
          execute_payment: boolean() | nil,
          finalize: boolean() | nil,
          request_meta: Inttegro.CreateOrderExistingCustomerInputRequestMeta.t() | nil,
          checkout_settings: Inttegro.CreateOrderExistingCustomerInputCheckoutSettings.t() | nil,
          invoice_settings: Inttegro.InvoiceSettingsInput.t() | nil,
          payout_settings: Inttegro.OrderPayoutSettingsRequest.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          billing_details: Inttegro.BillingDetailsInput.t() | nil,
          shipping: Inttegro.ShippingInput.t() | nil,
          customer_id: String.t(),
          line_items: [term()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id:
        if(is_nil(Map.get(map, "payment_method_id")),
          do: nil,
          else: Map.get(map, "payment_method_id")
        ),
      payment_method_data:
        if(is_nil(Map.get(map, "payment_method_data")),
          do: nil,
          else: Inttegro.PaymentMethodDataInput.from_map(Map.get(map, "payment_method_data"))
        ),
      receipt_number:
        if(is_nil(Map.get(map, "receipt_number")), do: nil, else: Map.get(map, "receipt_number")),
      statement_descriptor:
        if(is_nil(Map.get(map, "statement_descriptor")),
          do: nil,
          else: Map.get(map, "statement_descriptor")
        ),
      statement_descriptor_prefix:
        if(is_nil(Map.get(map, "statement_descriptor_prefix")),
          do: nil,
          else: Map.get(map, "statement_descriptor_prefix")
        ),
      execute_payment:
        if(is_nil(Map.get(map, "execute_payment")),
          do: nil,
          else: Map.get(map, "execute_payment")
        ),
      finalize: if(is_nil(Map.get(map, "finalize")), do: nil, else: Map.get(map, "finalize")),
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else:
            Inttegro.CreateOrderExistingCustomerInputRequestMeta.from_map(
              Map.get(map, "request_meta")
            )
        ),
      checkout_settings:
        if(is_nil(Map.get(map, "checkout_settings")),
          do: nil,
          else:
            Inttegro.CreateOrderExistingCustomerInputCheckoutSettings.from_map(
              Map.get(map, "checkout_settings")
            )
        ),
      invoice_settings:
        if(is_nil(Map.get(map, "invoice_settings")),
          do: nil,
          else: Inttegro.InvoiceSettingsInput.from_map(Map.get(map, "invoice_settings"))
        ),
      payout_settings:
        if(is_nil(Map.get(map, "payout_settings")),
          do: nil,
          else: Inttegro.OrderPayoutSettingsRequest.from_map(Map.get(map, "payout_settings"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      billing_details:
        if(is_nil(Map.get(map, "billing_details")),
          do: nil,
          else: Inttegro.BillingDetailsInput.from_map(Map.get(map, "billing_details"))
        ),
      shipping:
        if(is_nil(Map.get(map, "shipping")),
          do: nil,
          else: Inttegro.ShippingInput.from_map(Map.get(map, "shipping"))
        ),
      customer_id: Map.fetch!(map, "customer_id"),
      line_items: Enum.map(Map.fetch!(map, "line_items"), fn item -> item end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" =>
        if(is_nil(value.payment_method_id),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_id)
        ),
      "payment_method_data" =>
        if(is_nil(value.payment_method_data),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_data)
        ),
      "receipt_number" =>
        if(is_nil(value.receipt_number),
          do: nil,
          else: Inttegro.Codec.encode(value.receipt_number)
        ),
      "statement_descriptor" =>
        if(is_nil(value.statement_descriptor),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor)
        ),
      "statement_descriptor_prefix" =>
        if(is_nil(value.statement_descriptor_prefix),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor_prefix)
        ),
      "execute_payment" =>
        if(is_nil(value.execute_payment),
          do: nil,
          else: Inttegro.Codec.encode(value.execute_payment)
        ),
      "finalize" =>
        if(is_nil(value.finalize), do: nil, else: Inttegro.Codec.encode(value.finalize)),
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "checkout_settings" =>
        if(is_nil(value.checkout_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.checkout_settings)
        ),
      "invoice_settings" =>
        if(is_nil(value.invoice_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.invoice_settings)
        ),
      "payout_settings" =>
        if(is_nil(value.payout_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.payout_settings)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "billing_details" =>
        if(is_nil(value.billing_details),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_details)
        ),
      "shipping" =>
        if(is_nil(value.shipping), do: nil, else: Inttegro.Codec.encode(value.shipping)),
      "customer_id" => Inttegro.Codec.encode(value.customer_id),
      "line_items" => Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderExistingCustomerInputCheckoutSettings do
  @moduledoc "Typed Inttegro request parameters."
  defstruct redirect_url: nil, cancel_url: nil

  @type t :: %__MODULE__{
          redirect_url: String.t() | nil,
          cancel_url: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      redirect_url:
        if(is_nil(Map.get(map, "redirect_url")), do: nil, else: Map.get(map, "redirect_url")),
      cancel_url:
        if(is_nil(Map.get(map, "cancel_url")), do: nil, else: Map.get(map, "cancel_url"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "redirect_url" =>
        if(is_nil(value.redirect_url), do: nil, else: Inttegro.Codec.encode(value.redirect_url)),
      "cancel_url" =>
        if(is_nil(value.cancel_url), do: nil, else: Inttegro.Codec.encode(value.cancel_url))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderExistingCustomerInputRequestMeta do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderNewCustomerInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_data, :line_items]
  defstruct number: nil,
            receipt_number: nil,
            statement_descriptor: nil,
            statement_descriptor_prefix: nil,
            execute_payment: nil,
            finalize: nil,
            request_meta: nil,
            checkout_settings: nil,
            invoice_settings: nil,
            payout_settings: nil,
            custom_data: nil,
            billing_details: nil,
            shipping: nil,
            payment_method_data: nil,
            customer_data: nil,
            line_items: nil

  @type t :: %__MODULE__{
          number: String.t() | nil,
          receipt_number: String.t() | nil,
          statement_descriptor: String.t() | nil,
          statement_descriptor_prefix: String.t() | nil,
          execute_payment: boolean() | nil,
          finalize: boolean() | nil,
          request_meta: Inttegro.CreateOrderNewCustomerInputRequestMeta.t() | nil,
          checkout_settings: Inttegro.CreateOrderNewCustomerInputCheckoutSettings.t() | nil,
          invoice_settings: Inttegro.InvoiceSettingsInput.t() | nil,
          payout_settings: Inttegro.OrderPayoutSettingsRequest.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          billing_details: Inttegro.BillingDetailsInput.t() | nil,
          shipping: Inttegro.ShippingInput.t() | nil,
          payment_method_data: Inttegro.PaymentMethodDataInput.t() | nil,
          customer_data: Inttegro.CustomerDataInput.t(),
          line_items: [term()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      receipt_number:
        if(is_nil(Map.get(map, "receipt_number")), do: nil, else: Map.get(map, "receipt_number")),
      statement_descriptor:
        if(is_nil(Map.get(map, "statement_descriptor")),
          do: nil,
          else: Map.get(map, "statement_descriptor")
        ),
      statement_descriptor_prefix:
        if(is_nil(Map.get(map, "statement_descriptor_prefix")),
          do: nil,
          else: Map.get(map, "statement_descriptor_prefix")
        ),
      execute_payment:
        if(is_nil(Map.get(map, "execute_payment")),
          do: nil,
          else: Map.get(map, "execute_payment")
        ),
      finalize: if(is_nil(Map.get(map, "finalize")), do: nil, else: Map.get(map, "finalize")),
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else:
            Inttegro.CreateOrderNewCustomerInputRequestMeta.from_map(Map.get(map, "request_meta"))
        ),
      checkout_settings:
        if(is_nil(Map.get(map, "checkout_settings")),
          do: nil,
          else:
            Inttegro.CreateOrderNewCustomerInputCheckoutSettings.from_map(
              Map.get(map, "checkout_settings")
            )
        ),
      invoice_settings:
        if(is_nil(Map.get(map, "invoice_settings")),
          do: nil,
          else: Inttegro.InvoiceSettingsInput.from_map(Map.get(map, "invoice_settings"))
        ),
      payout_settings:
        if(is_nil(Map.get(map, "payout_settings")),
          do: nil,
          else: Inttegro.OrderPayoutSettingsRequest.from_map(Map.get(map, "payout_settings"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      billing_details:
        if(is_nil(Map.get(map, "billing_details")),
          do: nil,
          else: Inttegro.BillingDetailsInput.from_map(Map.get(map, "billing_details"))
        ),
      shipping:
        if(is_nil(Map.get(map, "shipping")),
          do: nil,
          else: Inttegro.ShippingInput.from_map(Map.get(map, "shipping"))
        ),
      payment_method_data:
        if(is_nil(Map.get(map, "payment_method_data")),
          do: nil,
          else: Inttegro.PaymentMethodDataInput.from_map(Map.get(map, "payment_method_data"))
        ),
      customer_data: Inttegro.CustomerDataInput.from_map(Map.fetch!(map, "customer_data")),
      line_items: Enum.map(Map.fetch!(map, "line_items"), fn item -> item end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "receipt_number" =>
        if(is_nil(value.receipt_number),
          do: nil,
          else: Inttegro.Codec.encode(value.receipt_number)
        ),
      "statement_descriptor" =>
        if(is_nil(value.statement_descriptor),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor)
        ),
      "statement_descriptor_prefix" =>
        if(is_nil(value.statement_descriptor_prefix),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor_prefix)
        ),
      "execute_payment" =>
        if(is_nil(value.execute_payment),
          do: nil,
          else: Inttegro.Codec.encode(value.execute_payment)
        ),
      "finalize" =>
        if(is_nil(value.finalize), do: nil, else: Inttegro.Codec.encode(value.finalize)),
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "checkout_settings" =>
        if(is_nil(value.checkout_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.checkout_settings)
        ),
      "invoice_settings" =>
        if(is_nil(value.invoice_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.invoice_settings)
        ),
      "payout_settings" =>
        if(is_nil(value.payout_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.payout_settings)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "billing_details" =>
        if(is_nil(value.billing_details),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_details)
        ),
      "shipping" =>
        if(is_nil(value.shipping), do: nil, else: Inttegro.Codec.encode(value.shipping)),
      "payment_method_data" =>
        if(is_nil(value.payment_method_data),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_data)
        ),
      "customer_data" => Inttegro.Codec.encode(value.customer_data),
      "line_items" => Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderNewCustomerInputCheckoutSettings do
  @moduledoc "Typed Inttegro request parameters."
  defstruct redirect_url: nil, cancel_url: nil

  @type t :: %__MODULE__{
          redirect_url: String.t() | nil,
          cancel_url: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      redirect_url:
        if(is_nil(Map.get(map, "redirect_url")), do: nil, else: Map.get(map, "redirect_url")),
      cancel_url:
        if(is_nil(Map.get(map, "cancel_url")), do: nil, else: Map.get(map, "cancel_url"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "redirect_url" =>
        if(is_nil(value.redirect_url), do: nil, else: Inttegro.Codec.encode(value.redirect_url)),
      "cancel_url" =>
        if(is_nil(value.cancel_url), do: nil, else: Inttegro.Codec.encode(value.cancel_url))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateOrderNewCustomerInputRequestMeta do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateProductRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :name]
  defstruct reference: nil,
            description: nil,
            about: nil,
            tax_code: nil,
            category: nil,
            shipment: nil,
            dimensions: nil,
            unit_dimension: nil,
            media: nil,
            attributes: nil,
            publish: nil,
            custom_data: nil,
            type: nil,
            name: nil

  @type t :: %__MODULE__{
          reference: String.t() | nil,
          description: String.t() | nil,
          about: String.t() | nil,
          tax_code: String.t() | nil,
          category: String.t() | nil,
          shipment: Inttegro.ProductShipmentInput.t() | nil,
          dimensions: Inttegro.ProductDimensionsInput.t() | nil,
          unit_dimension: String.t() | nil,
          media: Inttegro.ProductMediaInput.t() | nil,
          attributes: [Inttegro.ProductAttributeInput.t()] | nil,
          publish: boolean() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          type: Inttegro.ProductType.t(),
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      shipment:
        if(is_nil(Map.get(map, "shipment")),
          do: nil,
          else: Inttegro.ProductShipmentInput.from_map(Map.get(map, "shipment"))
        ),
      dimensions:
        if(is_nil(Map.get(map, "dimensions")),
          do: nil,
          else: Inttegro.ProductDimensionsInput.from_map(Map.get(map, "dimensions"))
        ),
      unit_dimension:
        if(is_nil(Map.get(map, "unit_dimension")), do: nil, else: Map.get(map, "unit_dimension")),
      media:
        if(is_nil(Map.get(map, "media")),
          do: nil,
          else: Inttegro.ProductMediaInput.from_map(Map.get(map, "media"))
        ),
      attributes:
        if(is_nil(Map.get(map, "attributes")),
          do: nil,
          else:
            Enum.map(Map.get(map, "attributes"), fn item ->
              Inttegro.ProductAttributeInput.from_map(item)
            end)
        ),
      publish: if(is_nil(Map.get(map, "publish")), do: nil, else: Map.get(map, "publish")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type")),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "shipment" =>
        if(is_nil(value.shipment), do: nil, else: Inttegro.Codec.encode(value.shipment)),
      "dimensions" =>
        if(is_nil(value.dimensions), do: nil, else: Inttegro.Codec.encode(value.dimensions)),
      "unit_dimension" =>
        if(is_nil(value.unit_dimension),
          do: nil,
          else: Inttegro.Codec.encode(value.unit_dimension)
        ),
      "media" => if(is_nil(value.media), do: nil, else: Inttegro.Codec.encode(value.media)),
      "attributes" =>
        if(is_nil(value.attributes),
          do: nil,
          else: Enum.map(value.attributes, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "publish" => if(is_nil(value.publish), do: nil, else: Inttegro.Codec.encode(value.publish)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "type" => Inttegro.ProductType.encode(value.type),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreatePurchaseIntentRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:quantity]
  defstruct product: nil,
            product_id: nil,
            price: nil,
            price_id: nil,
            usage: nil,
            expires_at: nil,
            quantity: nil

  @type t :: %__MODULE__{
          product: Inttegro.CreatePurchaseIntentRequestProduct.t() | nil,
          product_id: String.t() | nil,
          price: Inttegro.CreatePurchaseIntentRequestPrice.t() | nil,
          price_id: String.t() | nil,
          usage: Inttegro.CreatePurchaseIntentRequestUsage.t() | nil,
          expires_at: String.t() | nil,
          quantity: Inttegro.CreatePurchaseIntentRequestQuantity.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.CreatePurchaseIntentRequestProduct.from_map(Map.get(map, "product"))
        ),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else: Inttegro.CreatePurchaseIntentRequestPrice.from_map(Map.get(map, "price"))
        ),
      price_id: if(is_nil(Map.get(map, "price_id")), do: nil, else: Map.get(map, "price_id")),
      usage:
        if(is_nil(Map.get(map, "usage")),
          do: nil,
          else: Inttegro.CreatePurchaseIntentRequestUsage.from_map(Map.get(map, "usage"))
        ),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      quantity: Inttegro.CreatePurchaseIntentRequestQuantity.from_map(Map.fetch!(map, "quantity"))
    }
  end

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

defmodule Inttegro.CreatePurchaseIntentRequestPrice do
  @moduledoc "Typed Inttegro request parameters."
  defstruct id: nil, nominal: nil, original: nil, original_id: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          nominal: Inttegro.PriceParams.t() | nil,
          original: Inttegro.CreatePurchaseIntentRequestPriceOriginal.t() | nil,
          original_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      nominal:
        if(is_nil(Map.get(map, "nominal")),
          do: nil,
          else: Inttegro.PriceParams.from_map(Map.get(map, "nominal"))
        ),
      original:
        if(is_nil(Map.get(map, "original")),
          do: nil,
          else:
            Inttegro.CreatePurchaseIntentRequestPriceOriginal.from_map(Map.get(map, "original"))
        ),
      original_id:
        if(is_nil(Map.get(map, "original_id")), do: nil, else: Map.get(map, "original_id"))
    }
  end

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

defmodule Inttegro.CreatePurchaseIntentRequestPriceOriginal do
  @moduledoc "Typed Inttegro request parameters."
  defstruct id: nil, nominal: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          nominal: Inttegro.PriceParams.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      nominal:
        if(is_nil(Map.get(map, "nominal")),
          do: nil,
          else: Inttegro.PriceParams.from_map(Map.get(map, "nominal"))
        )
    }
  end

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

defmodule Inttegro.CreatePurchaseIntentRequestProduct do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct variant_set_id: nil, id: nil

  @type t :: %__MODULE__{
          variant_set_id: String.t() | nil,
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      variant_set_id:
        if(is_nil(Map.get(map, "variant_set_id")), do: nil, else: Map.get(map, "variant_set_id")),
      id: Map.fetch!(map, "id")
    }
  end

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

defmodule Inttegro.CreatePurchaseIntentRequestQuantity do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:min]
  defstruct max: nil, min: nil

  @type t :: %__MODULE__{
          max: integer() | nil,
          min: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max")),
      min: Map.fetch!(map, "min")
    }
  end

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

defmodule Inttegro.CreatePurchaseIntentRequestUsage do
  @moduledoc "Typed Inttegro request parameters."
  defstruct single_use: nil, multi_use: nil

  @type t :: %__MODULE__{
          single_use: boolean() | nil,
          multi_use: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      single_use:
        if(is_nil(Map.get(map, "single_use")), do: nil, else: Map.get(map, "single_use")),
      multi_use: if(is_nil(Map.get(map, "multi_use")), do: nil, else: Map.get(map, "multi_use"))
    }
  end

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

defmodule Inttegro.CreateRefundLineItemInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_line_item_id, :refund_amount]
  defstruct reason: nil, reason_details: nil, order_line_item_id: nil, refund_amount: nil

  @type t :: %__MODULE__{
          reason: Inttegro.RefundReason.t() | nil,
          reason_details: String.t() | nil,
          order_line_item_id: String.t(),
          refund_amount: Inttegro.AmountParams.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reason:
        if(is_nil(Map.get(map, "reason")),
          do: nil,
          else: Inttegro.RefundReason.decode(Map.get(map, "reason"))
        ),
      reason_details:
        if(is_nil(Map.get(map, "reason_details")), do: nil, else: Map.get(map, "reason_details")),
      order_line_item_id: Map.fetch!(map, "order_line_item_id"),
      refund_amount: Inttegro.AmountParams.from_map(Map.fetch!(map, "refund_amount"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reason" =>
        if(is_nil(value.reason), do: nil, else: Inttegro.RefundReason.encode(value.reason)),
      "reason_details" =>
        if(is_nil(value.reason_details),
          do: nil,
          else: Inttegro.Codec.encode(value.reason_details)
        ),
      "order_line_item_id" => Inttegro.Codec.encode(value.order_line_item_id),
      "refund_amount" => Inttegro.Codec.encode(value.refund_amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateRefundRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:line_items, :order_id, :reason]
  defstruct custom_data: nil,
            reason_details: nil,
            reference: nil,
            request_meta: nil,
            line_items: nil,
            order_id: nil,
            reason: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => String.t()} | nil,
          reason_details: String.t() | nil,
          reference: String.t() | nil,
          request_meta: Inttegro.RefundRequestMetaInput.t() | nil,
          line_items: [Inttegro.CreateRefundLineItemInput.t()],
          order_id: String.t(),
          reason: Inttegro.RefundReason.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      reason_details:
        if(is_nil(Map.get(map, "reason_details")), do: nil, else: Map.get(map, "reason_details")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else: Inttegro.RefundRequestMetaInput.from_map(Map.get(map, "request_meta"))
        ),
      line_items:
        Enum.map(Map.fetch!(map, "line_items"), fn item ->
          Inttegro.CreateRefundLineItemInput.from_map(item)
        end),
      order_id: Map.fetch!(map, "order_id"),
      reason: Inttegro.RefundReason.decode(Map.fetch!(map, "reason"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "reason_details" =>
        if(is_nil(value.reason_details),
          do: nil,
          else: Inttegro.Codec.encode(value.reason_details)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "line_items" => Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end),
      "order_id" => Inttegro.Codec.encode(value.order_id),
      "reason" => Inttegro.RefundReason.encode(value.reason)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateSMSMessageTemplateRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:channel, :name, :purpose, :sms]
  defstruct about: nil,
            locale: nil,
            variables: nil,
            channel: nil,
            name: nil,
            purpose: nil,
            sms: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplateVariableInput.t()] | nil,
          channel: Inttegro.MessageTemplateChannel.t(),
          name: String.t(),
          purpose: String.t(),
          sms: Inttegro.MessageTemplateSMSContentInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.MessageTemplateVariableInput.from_map(item)
            end)
        ),
      channel: Inttegro.MessageTemplateChannel.decode(Map.fetch!(map, "channel")),
      name: Map.fetch!(map, "name"),
      purpose: Map.fetch!(map, "purpose"),
      sms: Inttegro.MessageTemplateSMSContentInput.from_map(Map.fetch!(map, "sms"))
    }
  end

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
      "channel" => Inttegro.MessageTemplateChannel.encode(value.channel),
      "name" => Inttegro.Codec.encode(value.name),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "sms" => Inttegro.Codec.encode(value.sms)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CreateUploadRequestRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:purpose]
  defstruct constraints: nil,
            display: nil,
            subject: nil,
            recipient: nil,
            resource: nil,
            requester: nil,
            attempts: nil,
            custom_data: nil,
            expires_at: nil,
            purpose: nil

  @type t :: %__MODULE__{
          constraints: Inttegro.UploadRequestConstraintsInput.t() | nil,
          display: Inttegro.UploadRequestDisplayInput.t() | nil,
          subject: Inttegro.FilePartyInput.t() | nil,
          recipient: Inttegro.FilePartyInput.t() | nil,
          resource: Inttegro.FileResourceInput.t() | nil,
          requester: Inttegro.FileActorInput.t() | nil,
          attempts: Inttegro.UploadRequestAttemptsRequest.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          expires_at: String.t() | nil,
          purpose: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      constraints:
        if(is_nil(Map.get(map, "constraints")),
          do: nil,
          else: Inttegro.UploadRequestConstraintsInput.from_map(Map.get(map, "constraints"))
        ),
      display:
        if(is_nil(Map.get(map, "display")),
          do: nil,
          else: Inttegro.UploadRequestDisplayInput.from_map(Map.get(map, "display"))
        ),
      subject:
        if(is_nil(Map.get(map, "subject")),
          do: nil,
          else: Inttegro.FilePartyInput.from_map(Map.get(map, "subject"))
        ),
      recipient:
        if(is_nil(Map.get(map, "recipient")),
          do: nil,
          else: Inttegro.FilePartyInput.from_map(Map.get(map, "recipient"))
        ),
      resource:
        if(is_nil(Map.get(map, "resource")),
          do: nil,
          else: Inttegro.FileResourceInput.from_map(Map.get(map, "resource"))
        ),
      requester:
        if(is_nil(Map.get(map, "requester")),
          do: nil,
          else: Inttegro.FileActorInput.from_map(Map.get(map, "requester"))
        ),
      attempts:
        if(is_nil(Map.get(map, "attempts")),
          do: nil,
          else: Inttegro.UploadRequestAttemptsRequest.from_map(Map.get(map, "attempts"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      purpose: Map.fetch!(map, "purpose")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "constraints" =>
        if(is_nil(value.constraints), do: nil, else: Inttegro.Codec.encode(value.constraints)),
      "display" => if(is_nil(value.display), do: nil, else: Inttegro.Codec.encode(value.display)),
      "subject" => if(is_nil(value.subject), do: nil, else: Inttegro.Codec.encode(value.subject)),
      "recipient" =>
        if(is_nil(value.recipient), do: nil, else: Inttegro.Codec.encode(value.recipient)),
      "resource" =>
        if(is_nil(value.resource), do: nil, else: Inttegro.Codec.encode(value.resource)),
      "requester" =>
        if(is_nil(value.requester), do: nil, else: Inttegro.Codec.encode(value.requester)),
      "attempts" =>
        if(is_nil(value.attempts), do: nil, else: Inttegro.Codec.encode(value.attempts)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "purpose" => Inttegro.Codec.encode(value.purpose)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CurrencyBalanceSnapshot do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:available, :includes_transactions_before, :pending, :refund, :reserved]
  defstruct available: nil,
            includes_transactions_before: nil,
            pending: nil,
            refund: nil,
            reserved: nil

  @type t :: %__MODULE__{
          available: Inttegro.BalanceValue.t(),
          includes_transactions_before: String.t(),
          pending: Inttegro.BalanceValue.t(),
          refund: Inttegro.CurrencyBalanceSnapshotRefund.t(),
          reserved: Inttegro.CurrencyBalanceSnapshotReserved.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      available: Inttegro.BalanceValue.from_map(Map.fetch!(map, "available")),
      includes_transactions_before: Map.fetch!(map, "includes_transactions_before"),
      pending: Inttegro.BalanceValue.from_map(Map.fetch!(map, "pending")),
      refund: Inttegro.CurrencyBalanceSnapshotRefund.from_map(Map.fetch!(map, "refund")),
      reserved: Inttegro.CurrencyBalanceSnapshotReserved.from_map(Map.fetch!(map, "reserved"))
    }
  end

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

defmodule Inttegro.CurrencyBalanceSnapshotRefund do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:amount]
  defstruct amount: nil

  @type t :: %__MODULE__{
          amount: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CurrencyBalanceSnapshotReserved do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:amount]
  defstruct amount: nil

  @type t :: %__MODULE__{
          amount: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount: Map.fetch!(map, "amount")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Customer do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:balance, :created_at, :guest, :id, :name]
  defstruct balance: nil,
            billing_address: nil,
            created_at: nil,
            custom_data: nil,
            email_address: nil,
            guest: nil,
            id: nil,
            name: nil,
            phone_number: nil,
            reference: nil,
            shipping_address: nil,
            suffix: nil,
            title: nil,
            updated_at: nil

  @type t :: %__MODULE__{
          balance: %{optional(String.t()) => Inttegro.CustomerBalanceValue.t()},
          billing_address: Inttegro.CustomerAddress.t() | nil,
          created_at: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          email_address: String.t() | nil,
          guest: boolean(),
          id: String.t(),
          name: String.t(),
          phone_number: String.t() | nil,
          reference: String.t() | nil,
          shipping_address: Inttegro.CustomerAddress.t() | nil,
          suffix: String.t() | nil,
          title: String.t() | nil,
          updated_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      balance:
        Map.new(Map.fetch!(map, "balance"), fn {key, value} ->
          {key, Inttegro.CustomerBalanceValue.from_map(value)}
        end),
      billing_address:
        if(is_nil(Map.get(map, "billing_address")),
          do: nil,
          else: Inttegro.CustomerAddress.from_map(Map.get(map, "billing_address"))
        ),
      created_at: Map.fetch!(map, "created_at"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      email_address:
        if(is_nil(Map.get(map, "email_address")), do: nil, else: Map.get(map, "email_address")),
      guest: Map.fetch!(map, "guest"),
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      shipping_address:
        if(is_nil(Map.get(map, "shipping_address")),
          do: nil,
          else: Inttegro.CustomerAddress.from_map(Map.get(map, "shipping_address"))
        ),
      suffix: if(is_nil(Map.get(map, "suffix")), do: nil, else: Map.get(map, "suffix")),
      title: if(is_nil(Map.get(map, "title")), do: nil, else: Map.get(map, "title")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "balance" =>
        Map.new(value.balance, fn {key, value} ->
          {to_string(key), Inttegro.Codec.encode(value)}
        end),
      "billing_address" =>
        if(is_nil(value.billing_address),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_address)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "email_address" =>
        if(is_nil(value.email_address), do: nil, else: Inttegro.Codec.encode(value.email_address)),
      "guest" => Inttegro.Codec.encode(value.guest),
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "shipping_address" =>
        if(is_nil(value.shipping_address),
          do: nil,
          else: Inttegro.Codec.encode(value.shipping_address)
        ),
      "suffix" => if(is_nil(value.suffix), do: nil, else: Inttegro.Codec.encode(value.suffix)),
      "title" => if(is_nil(value.title), do: nil, else: Inttegro.Codec.encode(value.title)),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CustomerAddress do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:country]
  defstruct city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            name: nil,
            phone_number: nil,
            post_code: nil,
            region: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t(),
          line1: String.t() | nil,
          line2: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      country: Map.fetch!(map, "country"),
      line1: if(is_nil(Map.get(map, "line1")), do: nil, else: Map.get(map, "line1")),
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "country" => Inttegro.Codec.encode(value.country),
      "line1" => if(is_nil(value.line1), do: nil, else: Inttegro.Codec.encode(value.line1)),
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CustomerAddressInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:country]
  defstruct city: nil,
            line1: nil,
            line2: nil,
            name: nil,
            phone_number: nil,
            post_code: nil,
            region: nil,
            country: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil,
          country: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      line1: if(is_nil(Map.get(map, "line1")), do: nil, else: Map.get(map, "line1")),
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region")),
      country: Map.fetch!(map, "country")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "line1" => if(is_nil(value.line1), do: nil, else: Inttegro.Codec.encode(value.line1)),
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region)),
      "country" => Inttegro.Codec.encode(value.country)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CustomerBalanceValue do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:as_of, :available]
  defstruct as_of: nil, available: nil

  @type t :: %__MODULE__{
          as_of: String.t(),
          available: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      as_of: Map.fetch!(map, "as_of"),
      available: Inttegro.Amount.from_map(Map.fetch!(map, "available"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "as_of" => Inttegro.Codec.encode(value.as_of),
      "available" => Inttegro.Codec.encode(value.available)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CustomerDataInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :email_address, :phone_number]
  defstruct reference: nil, custom_data: nil, name: nil, email_address: nil, phone_number: nil

  @type t :: %__MODULE__{
          reference: String.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          name: String.t(),
          email_address: String.t(),
          phone_number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      name: Map.fetch!(map, "name"),
      email_address: Map.fetch!(map, "email_address"),
      phone_number: Map.fetch!(map, "phone_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "name" => Inttegro.Codec.encode(value.name),
      "email_address" => Inttegro.Codec.encode(value.email_address),
      "phone_number" => Inttegro.Codec.encode(value.phone_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.CustomerPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:customers, :number, :size]
  defstruct customers: nil, number: nil, size: nil

  @type t :: %__MODULE__{
          customers: [Inttegro.Customer.t()],
          number: integer(),
          size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      customers:
        Enum.map(Map.fetch!(map, "customers"), fn item -> Inttegro.Customer.from_map(item) end),
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "customers" => Enum.map(value.customers, fn item -> Inttegro.Codec.encode(item) end),
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.DeleteFileRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:file_id]
  defstruct file_id: nil

  @type t :: %__MODULE__{
          file_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      file_id: Map.fetch!(map, "file_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "file_id" => Inttegro.Codec.encode(value.file_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.DestroySecretKeyRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:secret_key_id]
  defstruct secret_key_id: nil

  @type t :: %__MODULE__{
          secret_key_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.DisableAutomaticPayoutsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.DisactivatePaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct payment_method_id: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.EnableAutomaticPayoutsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.Error do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type, :code, :url]
  defstruct message: nil, fix_code: nil, detail: nil, cause: nil, type: nil, code: nil, url: nil

  @type t :: %__MODULE__{
          message: String.t() | nil,
          fix_code: String.t() | nil,
          detail: String.t() | nil,
          cause: String.t() | nil,
          type: String.t(),
          code: String.t(),
          url: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message: if(is_nil(Map.get(map, "message")), do: nil, else: Map.get(map, "message")),
      fix_code: if(is_nil(Map.get(map, "fix_code")), do: nil, else: Map.get(map, "fix_code")),
      detail: if(is_nil(Map.get(map, "detail")), do: nil, else: Map.get(map, "detail")),
      cause: if(is_nil(Map.get(map, "cause")), do: nil, else: Map.get(map, "cause")),
      type: Map.fetch!(map, "type"),
      code: Map.fetch!(map, "code"),
      url: Map.fetch!(map, "url")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message" => if(is_nil(value.message), do: nil, else: Inttegro.Codec.encode(value.message)),
      "fix_code" =>
        if(is_nil(value.fix_code), do: nil, else: Inttegro.Codec.encode(value.fix_code)),
      "detail" => if(is_nil(value.detail), do: nil, else: Inttegro.Codec.encode(value.detail)),
      "cause" => if(is_nil(value.cause), do: nil, else: Inttegro.Codec.encode(value.cause)),
      "type" => Inttegro.Codec.encode(value.type),
      "code" => Inttegro.Codec.encode(value.code),
      "url" => Inttegro.Codec.encode(value.url)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FeeDetailsInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:amount]
  defstruct id: nil, label: nil, tax_code: nil, description: nil, custom_data: nil, amount: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          label: String.t() | nil,
          tax_code: String.t() | nil,
          description: String.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          amount: Inttegro.AmountParams.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      amount: Inttegro.AmountParams.from_map(Map.fetch!(map, "amount"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "amount" => Inttegro.Codec.encode(value.amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FeeLineItemInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :fee]
  defstruct type: nil, fee: nil

  @type t :: %__MODULE__{
          type: Inttegro.LineItemType.t(),
          fee: Inttegro.FeeDetailsInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.LineItemType.decode(Map.fetch!(map, "type")),
      fee: Inttegro.FeeDetailsInput.from_map(Map.fetch!(map, "fee"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.LineItemType.encode(value.type),
      "fee" => Inttegro.Codec.encode(value.fee)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.File do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [
    :id,
    :purpose,
    :status,
    :scan_status,
    :content_type,
    :size,
    :checksum_sha256,
    :created_by,
    :source,
    :storage,
    :created_at,
    :updated_at
  ]
  defstruct id: nil,
            purpose: nil,
            status: nil,
            scan_status: nil,
            name: nil,
            filename: nil,
            content_type: nil,
            size: nil,
            checksum_sha256: nil,
            created_by: nil,
            source: nil,
            media: nil,
            storage: nil,
            delivery: nil,
            latest_error: nil,
            custom_data: nil,
            metadata: nil,
            created_at: nil,
            updated_at: nil,
            available_at: nil,
            expires_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          purpose: String.t(),
          status: Inttegro.FileStatus.t(),
          scan_status: Inttegro.FileScanStatus.t(),
          name: String.t() | nil,
          filename: String.t() | nil,
          content_type: String.t(),
          size: integer(),
          checksum_sha256: String.t(),
          created_by: Inttegro.FileActor.t(),
          source: Inttegro.FileSource.t(),
          media: Inttegro.FileMedia.t() | nil,
          storage: Inttegro.PublicFileStorage.t(),
          delivery: Inttegro.FileDeliveryDetails.t() | nil,
          latest_error: Inttegro.FileLatestError.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          metadata: %{optional(String.t()) => String.t()} | nil,
          created_at: String.t(),
          updated_at: String.t(),
          available_at: String.t() | nil,
          expires_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      purpose: Map.fetch!(map, "purpose"),
      status: Inttegro.FileStatus.decode(Map.fetch!(map, "status")),
      scan_status: Inttegro.FileScanStatus.decode(Map.fetch!(map, "scan_status")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename")),
      content_type: Map.fetch!(map, "content_type"),
      size: Map.fetch!(map, "size"),
      checksum_sha256: Map.fetch!(map, "checksum_sha256"),
      created_by: Inttegro.FileActor.from_map(Map.fetch!(map, "created_by")),
      source: Inttegro.FileSource.from_map(Map.fetch!(map, "source")),
      media:
        if(is_nil(Map.get(map, "media")),
          do: nil,
          else: Inttegro.FileMedia.from_map(Map.get(map, "media"))
        ),
      storage: Inttegro.PublicFileStorage.from_map(Map.fetch!(map, "storage")),
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Inttegro.FileDeliveryDetails.from_map(Map.get(map, "delivery"))
        ),
      latest_error:
        if(is_nil(Map.get(map, "latest_error")),
          do: nil,
          else: Inttegro.FileLatestError.from_map(Map.get(map, "latest_error"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      metadata:
        if(is_nil(Map.get(map, "metadata")),
          do: nil,
          else: Map.new(Map.get(map, "metadata"), fn {key, value} -> {key, value} end)
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at: Map.fetch!(map, "updated_at"),
      available_at:
        if(is_nil(Map.get(map, "available_at")), do: nil, else: Map.get(map, "available_at")),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "status" => Inttegro.FileStatus.encode(value.status),
      "scan_status" => Inttegro.FileScanStatus.encode(value.scan_status),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename)),
      "content_type" => Inttegro.Codec.encode(value.content_type),
      "size" => Inttegro.Codec.encode(value.size),
      "checksum_sha256" => Inttegro.Codec.encode(value.checksum_sha256),
      "created_by" => Inttegro.Codec.encode(value.created_by),
      "source" => Inttegro.Codec.encode(value.source),
      "media" => if(is_nil(value.media), do: nil, else: Inttegro.Codec.encode(value.media)),
      "storage" => Inttegro.Codec.encode(value.storage),
      "delivery" =>
        if(is_nil(value.delivery), do: nil, else: Inttegro.Codec.encode(value.delivery)),
      "latest_error" =>
        if(is_nil(value.latest_error), do: nil, else: Inttegro.Codec.encode(value.latest_error)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "metadata" =>
        if(is_nil(value.metadata),
          do: nil,
          else:
            Map.new(value.metadata, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" => Inttegro.Codec.encode(value.updated_at),
      "available_at" =>
        if(is_nil(value.available_at), do: nil, else: Inttegro.Codec.encode(value.available_at)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileActor do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, id: nil, name: nil, email: nil

  @type t :: %__MODULE__{
          type: String.t(),
          id: String.t() | nil,
          name: String.t() | nil,
          email: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Map.fetch!(map, "type"),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.Codec.encode(value.type),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileActorInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct email: nil, id: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          email: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          type: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileContentsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:file_id]
  defstruct disposition: nil, delivery: nil, file_id: nil

  @type t :: %__MODULE__{
          disposition: Inttegro.FileDisposition.t() | nil,
          delivery: Inttegro.FileDelivery.t() | nil,
          file_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      disposition:
        if(is_nil(Map.get(map, "disposition")),
          do: nil,
          else: Inttegro.FileDisposition.decode(Map.get(map, "disposition"))
        ),
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Inttegro.FileDelivery.decode(Map.get(map, "delivery"))
        ),
      file_id: Map.fetch!(map, "file_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "disposition" =>
        if(is_nil(value.disposition),
          do: nil,
          else: Inttegro.FileDisposition.encode(value.disposition)
        ),
      "delivery" =>
        if(is_nil(value.delivery), do: nil, else: Inttegro.FileDelivery.encode(value.delivery)),
      "file_id" => Inttegro.Codec.encode(value.file_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileDeliveryDetails do
  @moduledoc "Typed Inttegro domain value."
  defstruct public_url: nil, cache_control: nil, content_type: nil

  @type t :: %__MODULE__{
          public_url: String.t() | nil,
          cache_control: String.t() | nil,
          content_type: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      public_url:
        if(is_nil(Map.get(map, "public_url")), do: nil, else: Map.get(map, "public_url")),
      cache_control:
        if(is_nil(Map.get(map, "cache_control")), do: nil, else: Map.get(map, "cache_control")),
      content_type:
        if(is_nil(Map.get(map, "content_type")), do: nil, else: Map.get(map, "content_type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "public_url" =>
        if(is_nil(value.public_url), do: nil, else: Inttegro.Codec.encode(value.public_url)),
      "cache_control" =>
        if(is_nil(value.cache_control), do: nil, else: Inttegro.Codec.encode(value.cache_control)),
      "content_type" =>
        if(is_nil(value.content_type), do: nil, else: Inttegro.Codec.encode(value.content_type))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLatestError do
  @moduledoc "Typed Inttegro domain value."
  defstruct code: nil, message: nil, retryable: nil, at: nil

  @type t :: %__MODULE__{
          code: String.t() | nil,
          message: String.t() | nil,
          retryable: boolean() | nil,
          at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      code: if(is_nil(Map.get(map, "code")), do: nil, else: Map.get(map, "code")),
      message: if(is_nil(Map.get(map, "message")), do: nil, else: Map.get(map, "message")),
      retryable: if(is_nil(Map.get(map, "retryable")), do: nil, else: Map.get(map, "retryable")),
      at: if(is_nil(Map.get(map, "at")), do: nil, else: Map.get(map, "at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "code" => if(is_nil(value.code), do: nil, else: Inttegro.Codec.encode(value.code)),
      "message" => if(is_nil(value.message), do: nil, else: Inttegro.Codec.encode(value.message)),
      "retryable" =>
        if(is_nil(value.retryable), do: nil, else: Inttegro.Codec.encode(value.retryable)),
      "at" => if(is_nil(value.at), do: nil, else: Inttegro.Codec.encode(value.at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLink do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [
    :id,
    :kind,
    :file_id,
    :purpose,
    :status,
    :active,
    :delivery,
    :access,
    :created_by,
    :created_at,
    :updated_at,
    :expires_at
  ]
  defstruct id: nil,
            kind: nil,
            file_id: nil,
            purpose: nil,
            status: nil,
            active: nil,
            delivery: nil,
            access: nil,
            created_by: nil,
            revoked_by: nil,
            custom_data: nil,
            metadata: nil,
            created_at: nil,
            updated_at: nil,
            expires_at: nil,
            revoked_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          kind: Inttegro.FileLinkKind.t(),
          file_id: String.t(),
          purpose: String.t(),
          status: Inttegro.FileLinkStatus.t(),
          active: boolean(),
          delivery: Inttegro.FileLinkDelivery.t(),
          access: Inttegro.FileLinkAccess.t(),
          created_by: Inttegro.FileLinkActor.t(),
          revoked_by: Inttegro.FileLinkActor.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          metadata: %{optional(String.t()) => String.t()} | nil,
          created_at: String.t(),
          updated_at: String.t(),
          expires_at: String.t(),
          revoked_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      kind: Inttegro.FileLinkKind.decode(Map.fetch!(map, "kind")),
      file_id: Map.fetch!(map, "file_id"),
      purpose: Map.fetch!(map, "purpose"),
      status: Inttegro.FileLinkStatus.decode(Map.fetch!(map, "status")),
      active: Map.fetch!(map, "active"),
      delivery: Inttegro.FileLinkDelivery.from_map(Map.fetch!(map, "delivery")),
      access: Inttegro.FileLinkAccess.from_map(Map.fetch!(map, "access")),
      created_by: Inttegro.FileLinkActor.from_map(Map.fetch!(map, "created_by")),
      revoked_by:
        if(is_nil(Map.get(map, "revoked_by")),
          do: nil,
          else: Inttegro.FileLinkActor.from_map(Map.get(map, "revoked_by"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      metadata:
        if(is_nil(Map.get(map, "metadata")),
          do: nil,
          else: Map.new(Map.get(map, "metadata"), fn {key, value} -> {key, value} end)
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at: Map.fetch!(map, "updated_at"),
      expires_at: Map.fetch!(map, "expires_at"),
      revoked_at:
        if(is_nil(Map.get(map, "revoked_at")), do: nil, else: Map.get(map, "revoked_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "kind" => Inttegro.FileLinkKind.encode(value.kind),
      "file_id" => Inttegro.Codec.encode(value.file_id),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "status" => Inttegro.FileLinkStatus.encode(value.status),
      "active" => Inttegro.Codec.encode(value.active),
      "delivery" => Inttegro.Codec.encode(value.delivery),
      "access" => Inttegro.Codec.encode(value.access),
      "created_by" => Inttegro.Codec.encode(value.created_by),
      "revoked_by" =>
        if(is_nil(value.revoked_by), do: nil, else: Inttegro.Codec.encode(value.revoked_by)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "metadata" =>
        if(is_nil(value.metadata),
          do: nil,
          else:
            Map.new(value.metadata, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" => Inttegro.Codec.encode(value.updated_at),
      "expires_at" => Inttegro.Codec.encode(value.expires_at),
      "revoked_at" =>
        if(is_nil(value.revoked_at), do: nil, else: Inttegro.Codec.encode(value.revoked_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkAccess do
  @moduledoc "Typed Inttegro domain value."
  defstruct max_accesses: nil,
            access_count: nil,
            last_accessed_at: nil,
            allow_download: nil,
            allowed_origins: nil

  @type t :: %__MODULE__{
          max_accesses: integer() | nil,
          access_count: integer() | nil,
          last_accessed_at: String.t() | nil,
          allow_download: boolean() | nil,
          allowed_origins: [String.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max_accesses:
        if(is_nil(Map.get(map, "max_accesses")), do: nil, else: Map.get(map, "max_accesses")),
      access_count:
        if(is_nil(Map.get(map, "access_count")), do: nil, else: Map.get(map, "access_count")),
      last_accessed_at:
        if(is_nil(Map.get(map, "last_accessed_at")),
          do: nil,
          else: Map.get(map, "last_accessed_at")
        ),
      allow_download:
        if(is_nil(Map.get(map, "allow_download")), do: nil, else: Map.get(map, "allow_download")),
      allowed_origins:
        if(is_nil(Map.get(map, "allowed_origins")),
          do: nil,
          else: Enum.map(Map.get(map, "allowed_origins"), fn item -> item end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max_accesses" =>
        if(is_nil(value.max_accesses), do: nil, else: Inttegro.Codec.encode(value.max_accesses)),
      "access_count" =>
        if(is_nil(value.access_count), do: nil, else: Inttegro.Codec.encode(value.access_count)),
      "last_accessed_at" =>
        if(is_nil(value.last_accessed_at),
          do: nil,
          else: Inttegro.Codec.encode(value.last_accessed_at)
        ),
      "allow_download" =>
        if(is_nil(value.allow_download),
          do: nil,
          else: Inttegro.Codec.encode(value.allow_download)
        ),
      "allowed_origins" =>
        if(is_nil(value.allowed_origins),
          do: nil,
          else: Enum.map(value.allowed_origins, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkAccessRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct max_accesses: nil, allow_download: nil, allowed_origins: nil, allowed_ip_ranges: nil

  @type t :: %__MODULE__{
          max_accesses: integer() | nil,
          allow_download: boolean() | nil,
          allowed_origins: [String.t()] | nil,
          allowed_ip_ranges: [String.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max_accesses:
        if(is_nil(Map.get(map, "max_accesses")), do: nil, else: Map.get(map, "max_accesses")),
      allow_download:
        if(is_nil(Map.get(map, "allow_download")), do: nil, else: Map.get(map, "allow_download")),
      allowed_origins:
        if(is_nil(Map.get(map, "allowed_origins")),
          do: nil,
          else: Enum.map(Map.get(map, "allowed_origins"), fn item -> item end)
        ),
      allowed_ip_ranges:
        if(is_nil(Map.get(map, "allowed_ip_ranges")),
          do: nil,
          else: Enum.map(Map.get(map, "allowed_ip_ranges"), fn item -> item end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max_accesses" =>
        if(is_nil(value.max_accesses), do: nil, else: Inttegro.Codec.encode(value.max_accesses)),
      "allow_download" =>
        if(is_nil(value.allow_download),
          do: nil,
          else: Inttegro.Codec.encode(value.allow_download)
        ),
      "allowed_origins" =>
        if(is_nil(value.allowed_origins),
          do: nil,
          else: Enum.map(value.allowed_origins, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "allowed_ip_ranges" =>
        if(is_nil(value.allowed_ip_ranges),
          do: nil,
          else: Enum.map(value.allowed_ip_ranges, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkActor do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct email: nil, id: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          email: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkCreation do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:file_link, :url]
  defstruct file_link: nil, url: nil

  @type t :: %__MODULE__{
          file_link: Inttegro.FileLink.t(),
          url: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      file_link: Inttegro.FileLink.from_map(Map.fetch!(map, "file_link")),
      url: Map.fetch!(map, "url")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "file_link" => Inttegro.Codec.encode(value.file_link),
      "url" => Inttegro.Codec.encode(value.url)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkDelivery do
  @moduledoc "Typed Inttegro domain value."
  defstruct mode: nil, filename: nil, content_type: nil, disposition: nil

  @type t :: %__MODULE__{
          mode: Inttegro.FileLinkDeliveryMode.t() | nil,
          filename: String.t() | nil,
          content_type: String.t() | nil,
          disposition: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      mode:
        if(is_nil(Map.get(map, "mode")),
          do: nil,
          else: Inttegro.FileLinkDeliveryMode.decode(Map.get(map, "mode"))
        ),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename")),
      content_type:
        if(is_nil(Map.get(map, "content_type")), do: nil, else: Map.get(map, "content_type")),
      disposition:
        if(is_nil(Map.get(map, "disposition")), do: nil, else: Map.get(map, "disposition"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "mode" =>
        if(is_nil(value.mode), do: nil, else: Inttegro.FileLinkDeliveryMode.encode(value.mode)),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename)),
      "content_type" =>
        if(is_nil(value.content_type), do: nil, else: Inttegro.Codec.encode(value.content_type)),
      "disposition" =>
        if(is_nil(value.disposition), do: nil, else: Inttegro.Codec.encode(value.disposition))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkDeliveryInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct mode: nil, filename: nil, content_type: nil, disposition: nil

  @type t :: %__MODULE__{
          mode: Inttegro.FileLinkDeliveryMode.t() | nil,
          filename: String.t() | nil,
          content_type: String.t() | nil,
          disposition: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      mode:
        if(is_nil(Map.get(map, "mode")),
          do: nil,
          else: Inttegro.FileLinkDeliveryMode.decode(Map.get(map, "mode"))
        ),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename")),
      content_type:
        if(is_nil(Map.get(map, "content_type")), do: nil, else: Map.get(map, "content_type")),
      disposition:
        if(is_nil(Map.get(map, "disposition")), do: nil, else: Map.get(map, "disposition"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "mode" =>
        if(is_nil(value.mode), do: nil, else: Inttegro.FileLinkDeliveryMode.encode(value.mode)),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename)),
      "content_type" =>
        if(is_nil(value.content_type), do: nil, else: Inttegro.Codec.encode(value.content_type)),
      "disposition" =>
        if(is_nil(value.disposition), do: nil, else: Inttegro.Codec.encode(value.disposition))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileLinkPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :file_links]
  defstruct number: nil, size: nil, file_links: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          file_links: [Inttegro.FileLink.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      file_links:
        Enum.map(Map.fetch!(map, "file_links"), fn item -> Inttegro.FileLink.from_map(item) end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "file_links" => Enum.map(value.file_links, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileMedia do
  @moduledoc "Typed Inttegro domain value."
  defstruct kind: nil,
            width: nil,
            height: nil,
            duration_ms: nil,
            page_count: nil,
            frame_count: nil,
            color_space: nil,
            has_alpha: nil,
            codec: nil,
            aspect_ratio: nil

  @type t :: %__MODULE__{
          kind: String.t() | nil,
          width: integer() | nil,
          height: integer() | nil,
          duration_ms: integer() | nil,
          page_count: integer() | nil,
          frame_count: integer() | nil,
          color_space: String.t() | nil,
          has_alpha: boolean() | nil,
          codec: String.t() | nil,
          aspect_ratio: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      kind: if(is_nil(Map.get(map, "kind")), do: nil, else: Map.get(map, "kind")),
      width: if(is_nil(Map.get(map, "width")), do: nil, else: Map.get(map, "width")),
      height: if(is_nil(Map.get(map, "height")), do: nil, else: Map.get(map, "height")),
      duration_ms:
        if(is_nil(Map.get(map, "duration_ms")), do: nil, else: Map.get(map, "duration_ms")),
      page_count:
        if(is_nil(Map.get(map, "page_count")), do: nil, else: Map.get(map, "page_count")),
      frame_count:
        if(is_nil(Map.get(map, "frame_count")), do: nil, else: Map.get(map, "frame_count")),
      color_space:
        if(is_nil(Map.get(map, "color_space")), do: nil, else: Map.get(map, "color_space")),
      has_alpha: if(is_nil(Map.get(map, "has_alpha")), do: nil, else: Map.get(map, "has_alpha")),
      codec: if(is_nil(Map.get(map, "codec")), do: nil, else: Map.get(map, "codec")),
      aspect_ratio:
        if(is_nil(Map.get(map, "aspect_ratio")), do: nil, else: Map.get(map, "aspect_ratio"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "kind" => if(is_nil(value.kind), do: nil, else: Inttegro.Codec.encode(value.kind)),
      "width" => if(is_nil(value.width), do: nil, else: Inttegro.Codec.encode(value.width)),
      "height" => if(is_nil(value.height), do: nil, else: Inttegro.Codec.encode(value.height)),
      "duration_ms" =>
        if(is_nil(value.duration_ms), do: nil, else: Inttegro.Codec.encode(value.duration_ms)),
      "page_count" =>
        if(is_nil(value.page_count), do: nil, else: Inttegro.Codec.encode(value.page_count)),
      "frame_count" =>
        if(is_nil(value.frame_count), do: nil, else: Inttegro.Codec.encode(value.frame_count)),
      "color_space" =>
        if(is_nil(value.color_space), do: nil, else: Inttegro.Codec.encode(value.color_space)),
      "has_alpha" =>
        if(is_nil(value.has_alpha), do: nil, else: Inttegro.Codec.encode(value.has_alpha)),
      "codec" => if(is_nil(value.codec), do: nil, else: Inttegro.Codec.encode(value.codec)),
      "aspect_ratio" =>
        if(is_nil(value.aspect_ratio), do: nil, else: Inttegro.Codec.encode(value.aspect_ratio))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FilePage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :files]
  defstruct number: nil, size: nil, files: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          files: [Inttegro.File.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      files: Enum.map(Map.fetch!(map, "files"), fn item -> Inttegro.File.from_map(item) end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "files" => Enum.map(value.files, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileParty do
  @moduledoc "Typed Inttegro domain value."
  defstruct type: nil, id: nil, name: nil, email: nil

  @type t :: %__MODULE__{
          type: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          email: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FilePartyInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct type: nil, id: nil, name: nil, email: nil

  @type t :: %__MODULE__{
          type: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          email: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileReferenceInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:file_id, :field]
  defstruct reference: nil, reference_kind: nil, purpose: nil, file_id: nil, field: nil

  @type t :: %__MODULE__{
          reference: String.t() | nil,
          reference_kind: String.t() | nil,
          purpose: String.t() | nil,
          file_id: String.t(),
          field: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      reference_kind:
        if(is_nil(Map.get(map, "reference_kind")), do: nil, else: Map.get(map, "reference_kind")),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      file_id: Map.fetch!(map, "file_id"),
      field: Map.fetch!(map, "field")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "reference_kind" =>
        if(is_nil(value.reference_kind),
          do: nil,
          else: Inttegro.Codec.encode(value.reference_kind)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "file_id" => Inttegro.Codec.encode(value.file_id),
      "field" => Inttegro.Codec.encode(value.field)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileReferenceReconcileRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:resource_type, :resource_id]
  defstruct references: nil, resource_type: nil, resource_id: nil

  @type t :: %__MODULE__{
          references: [Inttegro.FileReferenceInput.t()] | nil,
          resource_type: String.t(),
          resource_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      references:
        if(is_nil(Map.get(map, "references")),
          do: nil,
          else:
            Enum.map(Map.get(map, "references"), fn item ->
              Inttegro.FileReferenceInput.from_map(item)
            end)
        ),
      resource_type: Map.fetch!(map, "resource_type"),
      resource_id: Map.fetch!(map, "resource_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "references" =>
        if(is_nil(value.references),
          do: nil,
          else: Enum.map(value.references, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "resource_type" => Inttegro.Codec.encode(value.resource_type),
      "resource_id" => Inttegro.Codec.encode(value.resource_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileReferenceReconciliation do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:reconciled]
  defstruct reconciled: nil

  @type t :: %__MODULE__{
          reconciled: boolean()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reconciled: Map.fetch!(map, "reconciled")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reconciled" => Inttegro.Codec.encode(value.reconciled)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileResource do
  @moduledoc "Typed Inttegro domain value."
  defstruct type: nil, id: nil, name: nil

  @type t :: %__MODULE__{
          type: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileResourceInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct type: nil, id: nil, name: nil

  @type t :: %__MODULE__{
          type: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileSource do
  @moduledoc "Typed Inttegro domain value."
  defstruct type: nil, service: nil, upload_request_id: nil

  @type t :: %__MODULE__{
          type: Inttegro.FileSourceType.t() | nil,
          service: String.t() | nil,
          upload_request_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type:
        if(is_nil(Map.get(map, "type")),
          do: nil,
          else: Inttegro.FileSourceType.decode(Map.get(map, "type"))
        ),
      service: if(is_nil(Map.get(map, "service")), do: nil, else: Map.get(map, "service")),
      upload_request_id:
        if(is_nil(Map.get(map, "upload_request_id")),
          do: nil,
          else: Map.get(map, "upload_request_id")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.FileSourceType.encode(value.type)),
      "service" => if(is_nil(value.service), do: nil, else: Inttegro.Codec.encode(value.service)),
      "upload_request_id" =>
        if(is_nil(value.upload_request_id),
          do: nil,
          else: Inttegro.Codec.encode(value.upload_request_id)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FileUploadReceipt do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:content_type, :created_at, :id, :size, :status]
  defstruct content_type: nil,
            created_at: nil,
            filename: nil,
            id: nil,
            name: nil,
            size: nil,
            status: nil

  @type t :: %__MODULE__{
          content_type: String.t(),
          created_at: String.t(),
          filename: String.t() | nil,
          id: String.t(),
          name: String.t() | nil,
          size: integer(),
          status: Inttegro.FileStatus.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      content_type: Map.fetch!(map, "content_type"),
      created_at: Map.fetch!(map, "created_at"),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename")),
      id: Map.fetch!(map, "id"),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      size: Map.fetch!(map, "size"),
      status: Inttegro.FileStatus.decode(Map.fetch!(map, "status"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "content_type" => Inttegro.Codec.encode(value.content_type),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename)),
      "id" => Inttegro.Codec.encode(value.id),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "size" => Inttegro.Codec.encode(value.size),
      "status" => Inttegro.FileStatus.encode(value.status)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinalizeOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct order_id: nil

  @type t :: %__MODULE__{
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :currency, :id, :type]
  defstruct app_customer_local_fingerprint: nil,
            app_local_fingerprint: nil,
            archived_at: nil,
            created_at: nil,
            currency: nil,
            custom_data: nil,
            description: nil,
            id: nil,
            institution: nil,
            label: nil,
            pull_configuration: nil,
            push_configuration: nil,
            reference: nil,
            supplied: nil,
            type: nil,
            universal_fingerprint: nil,
            verification: nil,
            bank_account: nil,
            disconnected_at: nil,
            dosh_account: nil,
            owner: nil,
            wallet: nil

  @type t :: %__MODULE__{
          app_customer_local_fingerprint: String.t() | nil,
          app_local_fingerprint: String.t() | nil,
          archived_at: String.t() | nil,
          created_at: String.t(),
          currency: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          description: String.t() | nil,
          id: String.t(),
          institution: Inttegro.FinancialInstitution.t() | nil,
          label: String.t() | nil,
          pull_configuration: Inttegro.FinancialAccountPullConfiguration.t() | nil,
          push_configuration: Inttegro.FinancialAccountPushConfiguration.t() | nil,
          reference: String.t() | nil,
          supplied: Inttegro.ResourceSupply.t() | nil,
          type: Inttegro.FinancialAccountType.t(),
          universal_fingerprint: String.t() | nil,
          verification: %{optional(String.t()) => term()} | nil,
          bank_account: Inttegro.FinancialAccountBank.t() | nil,
          disconnected_at: String.t() | nil,
          dosh_account: %{optional(String.t()) => term()} | nil,
          owner: Inttegro.FinancialAccountOwner.t() | nil,
          wallet: Inttegro.FinancialAccountWallet.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      app_customer_local_fingerprint:
        if(is_nil(Map.get(map, "app_customer_local_fingerprint")),
          do: nil,
          else: Map.get(map, "app_customer_local_fingerprint")
        ),
      app_local_fingerprint:
        if(is_nil(Map.get(map, "app_local_fingerprint")),
          do: nil,
          else: Map.get(map, "app_local_fingerprint")
        ),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at")),
      created_at: Map.fetch!(map, "created_at"),
      currency: Map.fetch!(map, "currency"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      id: Map.fetch!(map, "id"),
      institution:
        if(is_nil(Map.get(map, "institution")),
          do: nil,
          else: Inttegro.FinancialInstitution.from_map(Map.get(map, "institution"))
        ),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      pull_configuration:
        if(is_nil(Map.get(map, "pull_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountPullConfiguration.from_map(
              Map.get(map, "pull_configuration")
            )
        ),
      push_configuration:
        if(is_nil(Map.get(map, "push_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountPushConfiguration.from_map(
              Map.get(map, "push_configuration")
            )
        ),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      supplied:
        if(is_nil(Map.get(map, "supplied")),
          do: nil,
          else: Inttegro.ResourceSupply.from_map(Map.get(map, "supplied"))
        ),
      type: Inttegro.FinancialAccountType.decode(Map.fetch!(map, "type")),
      universal_fingerprint:
        if(is_nil(Map.get(map, "universal_fingerprint")),
          do: nil,
          else: Map.get(map, "universal_fingerprint")
        ),
      verification:
        if(is_nil(Map.get(map, "verification")),
          do: nil,
          else: Map.new(Map.get(map, "verification"), fn {key, value} -> {key, value} end)
        ),
      bank_account:
        if(is_nil(Map.get(map, "bank_account")),
          do: nil,
          else: Inttegro.FinancialAccountBank.from_map(Map.get(map, "bank_account"))
        ),
      disconnected_at:
        if(is_nil(Map.get(map, "disconnected_at")),
          do: nil,
          else: Map.get(map, "disconnected_at")
        ),
      dosh_account:
        if(is_nil(Map.get(map, "dosh_account")),
          do: nil,
          else: Map.new(Map.get(map, "dosh_account"), fn {key, value} -> {key, value} end)
        ),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.FinancialAccountOwner.from_map(Map.get(map, "owner"))
        ),
      wallet:
        if(is_nil(Map.get(map, "wallet")),
          do: nil,
          else: Inttegro.FinancialAccountWallet.from_map(Map.get(map, "wallet"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "app_customer_local_fingerprint" =>
        if(is_nil(value.app_customer_local_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.app_customer_local_fingerprint)
        ),
      "app_local_fingerprint" =>
        if(is_nil(value.app_local_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.app_local_fingerprint)
        ),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "currency" => Inttegro.Codec.encode(value.currency),
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
      "id" => Inttegro.Codec.encode(value.id),
      "institution" =>
        if(is_nil(value.institution), do: nil, else: Inttegro.Codec.encode(value.institution)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "pull_configuration" =>
        if(is_nil(value.pull_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.pull_configuration)
        ),
      "push_configuration" =>
        if(is_nil(value.push_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.push_configuration)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "supplied" =>
        if(is_nil(value.supplied), do: nil, else: Inttegro.Codec.encode(value.supplied)),
      "type" => Inttegro.FinancialAccountType.encode(value.type),
      "universal_fingerprint" =>
        if(is_nil(value.universal_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.universal_fingerprint)
        ),
      "verification" =>
        if(is_nil(value.verification),
          do: nil,
          else:
            Map.new(value.verification, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "bank_account" =>
        if(is_nil(value.bank_account), do: nil, else: Inttegro.Codec.encode(value.bank_account)),
      "disconnected_at" =>
        if(is_nil(value.disconnected_at),
          do: nil,
          else: Inttegro.Codec.encode(value.disconnected_at)
        ),
      "dosh_account" =>
        if(is_nil(value.dosh_account),
          do: nil,
          else:
            Map.new(value.dosh_account, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "wallet" => if(is_nil(value.wallet), do: nil, else: Inttegro.Codec.encode(value.wallet))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountAddress do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:city, :country, :line_1, :region]
  defstruct city: nil,
            country: nil,
            line_1: nil,
            line_2: nil,
            name: nil,
            phone: nil,
            post_code: nil,
            region: nil

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          line_1: String.t(),
          line_2: String.t() | nil,
          name: String.t() | nil,
          phone: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: Map.fetch!(map, "city"),
      country: Map.fetch!(map, "country"),
      line_1: Map.fetch!(map, "line_1"),
      line_2: if(is_nil(Map.get(map, "line_2")), do: nil, else: Map.get(map, "line_2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone: if(is_nil(Map.get(map, "phone")), do: nil, else: Map.get(map, "phone")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: Map.fetch!(map, "region")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => Inttegro.Codec.encode(value.city),
      "country" => Inttegro.Codec.encode(value.country),
      "line_1" => Inttegro.Codec.encode(value.line_1),
      "line_2" => if(is_nil(value.line_2), do: nil, else: Inttegro.Codec.encode(value.line_2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone" => if(is_nil(value.phone), do: nil, else: Inttegro.Codec.encode(value.phone)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => Inttegro.Codec.encode(value.region)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBank do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, ghana_bank_account: nil

  @type t :: %__MODULE__{
          type: Inttegro.BankAccountType.t(),
          ghana_bank_account: Inttegro.GhanaBankAccount.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.BankAccountType.decode(Map.fetch!(map, "type")),
      ghana_bank_account:
        if(is_nil(Map.get(map, "ghana_bank_account")),
          do: nil,
          else: Inttegro.GhanaBankAccount.from_map(Map.get(map, "ghana_bank_account"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.BankAccountType.encode(value.type),
      "ghana_bank_account" =>
        if(is_nil(value.ghana_bank_account),
          do: nil,
          else: Inttegro.Codec.encode(value.ghana_bank_account)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBankRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:currency, :label, :reference, :type, :bank_account]
  defstruct custom_data: nil,
            description: nil,
            owner: nil,
            pull_configuration: nil,
            push_configuration: nil,
            currency: nil,
            label: nil,
            reference: nil,
            type: nil,
            bank_account: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => term()} | nil,
          description: String.t() | nil,
          owner: Inttegro.FinancialAccountOwnerInput.t() | nil,
          pull_configuration: Inttegro.FinancialAccountBankRequestPullConfiguration.t() | nil,
          push_configuration: Inttegro.FinancialAccountBankRequestPushConfiguration.t() | nil,
          currency: String.t(),
          label: String.t(),
          reference: String.t(),
          type: Inttegro.FinancialAccountType.t(),
          bank_account: Inttegro.FinancialAccountBankRequestBankAccount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.FinancialAccountOwnerInput.from_map(Map.get(map, "owner"))
        ),
      pull_configuration:
        if(is_nil(Map.get(map, "pull_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountBankRequestPullConfiguration.from_map(
              Map.get(map, "pull_configuration")
            )
        ),
      push_configuration:
        if(is_nil(Map.get(map, "push_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountBankRequestPushConfiguration.from_map(
              Map.get(map, "push_configuration")
            )
        ),
      currency: Map.fetch!(map, "currency"),
      label: Map.fetch!(map, "label"),
      reference: Map.fetch!(map, "reference"),
      type: Inttegro.FinancialAccountType.decode(Map.fetch!(map, "type")),
      bank_account:
        Inttegro.FinancialAccountBankRequestBankAccount.from_map(Map.fetch!(map, "bank_account"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
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
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "pull_configuration" =>
        if(is_nil(value.pull_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.pull_configuration)
        ),
      "push_configuration" =>
        if(is_nil(value.push_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.push_configuration)
        ),
      "currency" => Inttegro.Codec.encode(value.currency),
      "label" => Inttegro.Codec.encode(value.label),
      "reference" => Inttegro.Codec.encode(value.reference),
      "type" => Inttegro.FinancialAccountType.encode(value.type),
      "bank_account" => Inttegro.Codec.encode(value.bank_account)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBankRequestBankAccount do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :ghana_bank_account]
  defstruct type: nil, ghana_bank_account: nil

  @type t :: %__MODULE__{
          type: Inttegro.BankAccountType.t(),
          ghana_bank_account: Inttegro.FinancialAccountBankRequestBankAccountGhanaBankAccount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.BankAccountType.decode(Map.fetch!(map, "type")),
      ghana_bank_account:
        Inttegro.FinancialAccountBankRequestBankAccountGhanaBankAccount.from_map(
          Map.fetch!(map, "ghana_bank_account")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.BankAccountType.encode(value.type),
      "ghana_bank_account" => Inttegro.Codec.encode(value.ghana_bank_account)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBankRequestBankAccountGhanaBankAccount do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:number]
  defstruct bank_name: nil, branch: nil, sort_code: nil, swift_code: nil, holder: nil, number: nil

  @type t :: %__MODULE__{
          bank_name: String.t() | nil,
          branch: String.t() | nil,
          sort_code: String.t() | nil,
          swift_code: String.t() | nil,
          holder: Inttegro.FinancialAccountOwnerInput.t() | nil,
          number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bank_name: if(is_nil(Map.get(map, "bank_name")), do: nil, else: Map.get(map, "bank_name")),
      branch: if(is_nil(Map.get(map, "branch")), do: nil, else: Map.get(map, "branch")),
      sort_code: if(is_nil(Map.get(map, "sort_code")), do: nil, else: Map.get(map, "sort_code")),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code")),
      holder:
        if(is_nil(Map.get(map, "holder")),
          do: nil,
          else: Inttegro.FinancialAccountOwnerInput.from_map(Map.get(map, "holder"))
        ),
      number: Map.fetch!(map, "number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bank_name" =>
        if(is_nil(value.bank_name), do: nil, else: Inttegro.Codec.encode(value.bank_name)),
      "branch" => if(is_nil(value.branch), do: nil, else: Inttegro.Codec.encode(value.branch)),
      "sort_code" =>
        if(is_nil(value.sort_code), do: nil, else: Inttegro.Codec.encode(value.sort_code)),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code)),
      "holder" => if(is_nil(value.holder), do: nil, else: Inttegro.Codec.encode(value.holder)),
      "number" => Inttegro.Codec.encode(value.number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBankRequestPullConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountBankRequestPushConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountDisableRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_id]
  defstruct unset_as_payout_destination: nil, account_id: nil

  @type t :: %__MODULE__{
          unset_as_payout_destination: boolean() | nil,
          account_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      unset_as_payout_destination:
        if(is_nil(Map.get(map, "unset_as_payout_destination")),
          do: nil,
          else: Map.get(map, "unset_as_payout_destination")
        ),
      account_id: Map.fetch!(map, "account_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "unset_as_payout_destination" =>
        if(is_nil(value.unset_as_payout_destination),
          do: nil,
          else: Inttegro.Codec.encode(value.unset_as_payout_destination)
        ),
      "account_id" => Inttegro.Codec.encode(value.account_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountDoshRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:currency, :label, :owner, :reference, :type, :dosh_account]
  defstruct custom_data: nil,
            description: nil,
            pull_configuration: nil,
            push_configuration: nil,
            currency: nil,
            label: nil,
            owner: nil,
            reference: nil,
            type: nil,
            dosh_account: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => term()} | nil,
          description: String.t() | nil,
          pull_configuration: Inttegro.FinancialAccountDoshRequestPullConfiguration.t() | nil,
          push_configuration: Inttegro.FinancialAccountDoshRequestPushConfiguration.t() | nil,
          currency: String.t(),
          label: String.t(),
          owner: Inttegro.FinancialAccountOwnerInput.t(),
          reference: String.t(),
          type: Inttegro.FinancialAccountType.t(),
          dosh_account: %{optional(String.t()) => term()}
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      pull_configuration:
        if(is_nil(Map.get(map, "pull_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountDoshRequestPullConfiguration.from_map(
              Map.get(map, "pull_configuration")
            )
        ),
      push_configuration:
        if(is_nil(Map.get(map, "push_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountDoshRequestPushConfiguration.from_map(
              Map.get(map, "push_configuration")
            )
        ),
      currency: Map.fetch!(map, "currency"),
      label: Map.fetch!(map, "label"),
      owner: Inttegro.FinancialAccountOwnerInput.from_map(Map.fetch!(map, "owner")),
      reference: Map.fetch!(map, "reference"),
      type: Inttegro.FinancialAccountType.decode(Map.fetch!(map, "type")),
      dosh_account: Map.new(Map.fetch!(map, "dosh_account"), fn {key, value} -> {key, value} end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
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
      "pull_configuration" =>
        if(is_nil(value.pull_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.pull_configuration)
        ),
      "push_configuration" =>
        if(is_nil(value.push_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.push_configuration)
        ),
      "currency" => Inttegro.Codec.encode(value.currency),
      "label" => Inttegro.Codec.encode(value.label),
      "owner" => Inttegro.Codec.encode(value.owner),
      "reference" => Inttegro.Codec.encode(value.reference),
      "type" => Inttegro.FinancialAccountType.encode(value.type),
      "dosh_account" =>
        Map.new(value.dosh_account, fn {key, value} ->
          {to_string(key), Inttegro.Codec.encode(value)}
        end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountDoshRequestPullConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountDoshRequestPushConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountEnablePullRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_id]
  defstruct ip_address: nil, user_agent: nil, account_id: nil

  @type t :: %__MODULE__{
          ip_address: String.t() | nil,
          user_agent: String.t() | nil,
          account_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      ip_address:
        if(is_nil(Map.get(map, "ip_address")), do: nil, else: Map.get(map, "ip_address")),
      user_agent:
        if(is_nil(Map.get(map, "user_agent")), do: nil, else: Map.get(map, "user_agent")),
      account_id: Map.fetch!(map, "account_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "ip_address" =>
        if(is_nil(value.ip_address), do: nil, else: Inttegro.Codec.encode(value.ip_address)),
      "user_agent" =>
        if(is_nil(value.user_agent), do: nil, else: Inttegro.Codec.encode(value.user_agent)),
      "account_id" => Inttegro.Codec.encode(value.account_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountIDRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_id]
  defstruct account_id: nil

  @type t :: %__MODULE__{
          account_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_id: Map.fetch!(map, "account_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_id" => Inttegro.Codec.encode(value.account_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountOwner do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:address, :name]
  defstruct address: nil, name: nil

  @type t :: %__MODULE__{
          address: Inttegro.FinancialAccountAddress.t(),
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Inttegro.FinancialAccountAddress.from_map(Map.fetch!(map, "address")),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountOwnerInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :address]
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t(),
          address: Inttegro.FinancialAccountOwnerInputAddress.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      address: Inttegro.FinancialAccountOwnerInputAddress.from_map(Map.fetch!(map, "address"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => Inttegro.Codec.encode(value.name),
      "address" => Inttegro.Codec.encode(value.address)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountOwnerInputAddress do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:country]
  defstruct city: nil,
            line_1: nil,
            line_2: nil,
            name: nil,
            phone: nil,
            post_code: nil,
            region: nil,
            country: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          line_1: String.t() | nil,
          line_2: String.t() | nil,
          name: String.t() | nil,
          phone: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil,
          country: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      line_1: if(is_nil(Map.get(map, "line_1")), do: nil, else: Map.get(map, "line_1")),
      line_2: if(is_nil(Map.get(map, "line_2")), do: nil, else: Map.get(map, "line_2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone: if(is_nil(Map.get(map, "phone")), do: nil, else: Map.get(map, "phone")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region")),
      country: Map.fetch!(map, "country")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "line_1" => if(is_nil(value.line_1), do: nil, else: Inttegro.Codec.encode(value.line_1)),
      "line_2" => if(is_nil(value.line_2), do: nil, else: Inttegro.Codec.encode(value.line_2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone" => if(is_nil(value.phone), do: nil, else: Inttegro.Codec.encode(value.phone)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region)),
      "country" => Inttegro.Codec.encode(value.country)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountOwnerUpdateInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: Inttegro.FinancialAccountOwnerUpdateInputAddress.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address:
        if(is_nil(Map.get(map, "address")),
          do: nil,
          else: Inttegro.FinancialAccountOwnerUpdateInputAddress.from_map(Map.get(map, "address"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountOwnerUpdateInputAddress do
  @moduledoc "Typed Inttegro request parameters."
  defstruct city: nil,
            country: nil,
            line_1: nil,
            line_2: nil,
            name: nil,
            phone: nil,
            post_code: nil,
            region: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          line_1: String.t() | nil,
          line_2: String.t() | nil,
          name: String.t() | nil,
          phone: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      country: if(is_nil(Map.get(map, "country")), do: nil, else: Map.get(map, "country")),
      line_1: if(is_nil(Map.get(map, "line_1")), do: nil, else: Map.get(map, "line_1")),
      line_2: if(is_nil(Map.get(map, "line_2")), do: nil, else: Map.get(map, "line_2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone: if(is_nil(Map.get(map, "phone")), do: nil, else: Map.get(map, "phone")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "country" => if(is_nil(value.country), do: nil, else: Inttegro.Codec.encode(value.country)),
      "line_1" => if(is_nil(value.line_1), do: nil, else: Inttegro.Codec.encode(value.line_1)),
      "line_2" => if(is_nil(value.line_2), do: nil, else: Inttegro.Codec.encode(value.line_2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone" => if(is_nil(value.phone), do: nil, else: Inttegro.Codec.encode(value.phone)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:accounts, :number, :size]
  defstruct accounts: nil, number: nil, size: nil

  @type t :: %__MODULE__{
          accounts: [Inttegro.FinancialAccount.t()],
          number: integer(),
          size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      accounts:
        Enum.map(Map.fetch!(map, "accounts"), fn item ->
          Inttegro.FinancialAccount.from_map(item)
        end),
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "accounts" => Enum.map(value.accounts, fn item -> Inttegro.Codec.encode(item) end),
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountPageRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number]
  defstruct page_size: nil, page_number: nil

  @type t :: %__MODULE__{
          page_size: integer() | nil,
          page_number: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      page_number: Map.fetch!(map, "page_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "page_number" => Inttegro.Codec.encode(value.page_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountPullConfiguration do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:enabled_at, :mandate]
  defstruct enabled_at: nil, mandate: nil

  @type t :: %__MODULE__{
          enabled_at: String.t(),
          mandate: Inttegro.FinancialAccountPullConfigurationMandate.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled_at: Map.fetch!(map, "enabled_at"),
      mandate:
        Inttegro.FinancialAccountPullConfigurationMandate.from_map(Map.fetch!(map, "mandate"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled_at" => Inttegro.Codec.encode(value.enabled_at),
      "mandate" => Inttegro.Codec.encode(value.mandate)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountPullConfigurationMandate do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :id, :ip_address, :user_agent]
  defstruct created_at: nil, id: nil, ip_address: nil, user_agent: nil

  @type t :: %__MODULE__{
          created_at: String.t(),
          id: String.t(),
          ip_address: String.t(),
          user_agent: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      id: Map.fetch!(map, "id"),
      ip_address: Map.fetch!(map, "ip_address"),
      user_agent: Map.fetch!(map, "user_agent")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "id" => Inttegro.Codec.encode(value.id),
      "ip_address" => Inttegro.Codec.encode(value.ip_address),
      "user_agent" => Inttegro.Codec.encode(value.user_agent)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountPushConfiguration do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:enabled_at]
  defstruct enabled_at: nil

  @type t :: %__MODULE__{
          enabled_at: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled_at: Map.fetch!(map, "enabled_at")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled_at" => Inttegro.Codec.encode(value.enabled_at)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountUpdateRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_id]
  defstruct custom_data: nil,
            description: nil,
            label: nil,
            owner: nil,
            reference: nil,
            account_id: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => term()} | nil,
          description: String.t() | nil,
          label: String.t() | nil,
          owner: Inttegro.FinancialAccountOwnerUpdateInput.t() | nil,
          reference: String.t() | nil,
          account_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.FinancialAccountOwnerUpdateInput.from_map(Map.get(map, "owner"))
        ),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      account_id: Map.fetch!(map, "account_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
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
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "account_id" => Inttegro.Codec.encode(value.account_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWallet do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :type]
  defstruct id: nil, type: nil, mobile_money: nil

  @type t :: %__MODULE__{
          id: String.t(),
          type: Inttegro.WalletType.t(),
          mobile_money: Inttegro.FinancialAccountWalletMobileMoney.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      type: Inttegro.WalletType.decode(Map.fetch!(map, "type")),
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else: Inttegro.FinancialAccountWalletMobileMoney.from_map(Map.get(map, "mobile_money"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "type" => Inttegro.WalletType.encode(value.type),
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletMobileMoney do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:account_number, :network]
  defstruct account_number: nil, network: nil

  @type t :: %__MODULE__{
          account_number: String.t(),
          network: Inttegro.MobileMoneyNetwork.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_number: Map.fetch!(map, "account_number"),
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:currency, :label, :owner, :reference, :type, :wallet]
  defstruct custom_data: nil,
            description: nil,
            pull_configuration: nil,
            push_configuration: nil,
            currency: nil,
            label: nil,
            owner: nil,
            reference: nil,
            type: nil,
            wallet: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => term()} | nil,
          description: String.t() | nil,
          pull_configuration: Inttegro.FinancialAccountWalletRequestPullConfiguration.t() | nil,
          push_configuration: Inttegro.FinancialAccountWalletRequestPushConfiguration.t() | nil,
          currency: String.t(),
          label: String.t(),
          owner: Inttegro.FinancialAccountOwnerInput.t(),
          reference: String.t(),
          type: Inttegro.FinancialAccountType.t(),
          wallet: Inttegro.FinancialAccountWalletRequestWallet.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      pull_configuration:
        if(is_nil(Map.get(map, "pull_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountWalletRequestPullConfiguration.from_map(
              Map.get(map, "pull_configuration")
            )
        ),
      push_configuration:
        if(is_nil(Map.get(map, "push_configuration")),
          do: nil,
          else:
            Inttegro.FinancialAccountWalletRequestPushConfiguration.from_map(
              Map.get(map, "push_configuration")
            )
        ),
      currency: Map.fetch!(map, "currency"),
      label: Map.fetch!(map, "label"),
      owner: Inttegro.FinancialAccountOwnerInput.from_map(Map.fetch!(map, "owner")),
      reference: Map.fetch!(map, "reference"),
      type: Inttegro.FinancialAccountType.decode(Map.fetch!(map, "type")),
      wallet: Inttegro.FinancialAccountWalletRequestWallet.from_map(Map.fetch!(map, "wallet"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
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
      "pull_configuration" =>
        if(is_nil(value.pull_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.pull_configuration)
        ),
      "push_configuration" =>
        if(is_nil(value.push_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.push_configuration)
        ),
      "currency" => Inttegro.Codec.encode(value.currency),
      "label" => Inttegro.Codec.encode(value.label),
      "owner" => Inttegro.Codec.encode(value.owner),
      "reference" => Inttegro.Codec.encode(value.reference),
      "type" => Inttegro.FinancialAccountType.encode(value.type),
      "wallet" => Inttegro.Codec.encode(value.wallet)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletRequestPullConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletRequestPushConfiguration do
  @moduledoc "Typed Inttegro request parameters."
  defstruct enabled: nil

  @type t :: %__MODULE__{
          enabled: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enabled: if(is_nil(Map.get(map, "enabled")), do: nil, else: Map.get(map, "enabled"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enabled" => if(is_nil(value.enabled), do: nil, else: Inttegro.Codec.encode(value.enabled))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletRequestWallet do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :mobile_money]
  defstruct type: nil, mobile_money: nil

  @type t :: %__MODULE__{
          type: Inttegro.WalletType.t(),
          mobile_money: Inttegro.FinancialAccountWalletRequestWalletMobileMoney.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.WalletType.decode(Map.fetch!(map, "type")),
      mobile_money:
        Inttegro.FinancialAccountWalletRequestWalletMobileMoney.from_map(
          Map.fetch!(map, "mobile_money")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.WalletType.encode(value.type),
      "mobile_money" => Inttegro.Codec.encode(value.mobile_money)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialAccountWalletRequestWalletMobileMoney do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_number, :network]
  defstruct account_number: nil, network: nil

  @type t :: %__MODULE__{
          account_number: String.t(),
          network: Inttegro.MobileMoneyNetwork.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_number: Map.fetch!(map, "account_number"),
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialInstitution do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:country, :id, :name, :type]
  defstruct bank: nil, country: nil, id: nil, mobile_money_provider: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          bank: Inttegro.FinancialInstitutionBank.t() | nil,
          country: String.t(),
          id: String.t(),
          mobile_money_provider: Inttegro.FinancialInstitutionMobileMoneyProvider.t() | nil,
          name: String.t(),
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bank:
        if(is_nil(Map.get(map, "bank")),
          do: nil,
          else: Inttegro.FinancialInstitutionBank.from_map(Map.get(map, "bank"))
        ),
      country: Map.fetch!(map, "country"),
      id: Map.fetch!(map, "id"),
      mobile_money_provider:
        if(is_nil(Map.get(map, "mobile_money_provider")),
          do: nil,
          else:
            Inttegro.FinancialInstitutionMobileMoneyProvider.from_map(
              Map.get(map, "mobile_money_provider")
            )
        ),
      name: Map.fetch!(map, "name"),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bank" => if(is_nil(value.bank), do: nil, else: Inttegro.Codec.encode(value.bank)),
      "country" => Inttegro.Codec.encode(value.country),
      "id" => Inttegro.Codec.encode(value.id),
      "mobile_money_provider" =>
        if(is_nil(value.mobile_money_provider),
          do: nil,
          else: Inttegro.Codec.encode(value.mobile_money_provider)
        ),
      "name" => Inttegro.Codec.encode(value.name),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialInstitutionBank do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:bank_account_type, :code_scheme]
  defstruct bank_account_type: nil,
            branch: nil,
            code_scheme: nil,
            sort_code_prefix: nil,
            swift_code: nil

  @type t :: %__MODULE__{
          bank_account_type: String.t(),
          branch: Inttegro.FinancialInstitutionBankBranch.t() | nil,
          code_scheme: String.t(),
          sort_code_prefix: String.t() | nil,
          swift_code: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bank_account_type: Map.fetch!(map, "bank_account_type"),
      branch:
        if(is_nil(Map.get(map, "branch")),
          do: nil,
          else: Inttegro.FinancialInstitutionBankBranch.from_map(Map.get(map, "branch"))
        ),
      code_scheme: Map.fetch!(map, "code_scheme"),
      sort_code_prefix:
        if(is_nil(Map.get(map, "sort_code_prefix")),
          do: nil,
          else: Map.get(map, "sort_code_prefix")
        ),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bank_account_type" => Inttegro.Codec.encode(value.bank_account_type),
      "branch" => if(is_nil(value.branch), do: nil, else: Inttegro.Codec.encode(value.branch)),
      "code_scheme" => Inttegro.Codec.encode(value.code_scheme),
      "sort_code_prefix" =>
        if(is_nil(value.sort_code_prefix),
          do: nil,
          else: Inttegro.Codec.encode(value.sort_code_prefix)
        ),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.FinancialInstitutionBankBranch do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :sort_code]
  defstruct id: nil, name: nil, sort_code: nil

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          sort_code: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      sort_code: Map.fetch!(map, "sort_code")
    }
  end

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

defmodule Inttegro.FinancialInstitutionMobileMoneyProvider do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:provider]
  defstruct provider: nil

  @type t :: %__MODULE__{
          provider: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      provider: Map.fetch!(map, "provider")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "provider" => Inttegro.Codec.encode(value.provider)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.GenerateSecretKeyRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct label: nil

  @type t :: %__MODULE__{
          label: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.GeneratedSecretKey do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :token_type, :issued_at, :token]
  defstruct id: nil, label: nil, token_type: nil, issued_at: nil, token: nil

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          token_type: Inttegro.SecretKeyTokenType.t(),
          issued_at: String.t(),
          token: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      token_type: Inttegro.SecretKeyTokenType.decode(Map.fetch!(map, "token_type")),
      issued_at: Map.fetch!(map, "issued_at"),
      token: Map.fetch!(map, "token")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "token_type" => Inttegro.SecretKeyTokenType.encode(value.token_type),
      "issued_at" => Inttegro.Codec.encode(value.issued_at),
      "token" => Inttegro.Codec.encode(value.token)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.GetPaymentMethodSettingsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.GetPayoutSettingsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.GhanaBankAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:holder, :number]
  defstruct branch: nil, holder: nil, name: nil, number: nil, sort_code: nil, swift_code: nil

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          holder: Inttegro.FinancialAccountOwner.t(),
          name: String.t() | nil,
          number: String.t(),
          sort_code: String.t() | nil,
          swift_code: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      branch: if(is_nil(Map.get(map, "branch")), do: nil, else: Map.get(map, "branch")),
      holder: Inttegro.FinancialAccountOwner.from_map(Map.fetch!(map, "holder")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      number: Map.fetch!(map, "number"),
      sort_code: if(is_nil(Map.get(map, "sort_code")), do: nil, else: Map.get(map, "sort_code")),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code"))
    }
  end

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

defmodule Inttegro.InitiateOTPRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:recipient, :service_name, :token_size]
  defstruct async_delivery: nil,
            message_template: nil,
            purpose: nil,
            sender: nil,
            token_alphabet: nil,
            token_alphabet_type: nil,
            validity_duration_in_minutes: nil,
            recipient: nil,
            service_name: nil,
            token_size: nil

  @type t :: %__MODULE__{
          async_delivery: boolean() | nil,
          message_template: String.t() | nil,
          purpose: String.t() | nil,
          sender: String.t() | nil,
          token_alphabet: String.t() | nil,
          token_alphabet_type: Inttegro.OTPAlphabetType.t() | nil,
          validity_duration_in_minutes: integer() | nil,
          recipient: String.t(),
          service_name: String.t(),
          token_size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      async_delivery:
        if(is_nil(Map.get(map, "async_delivery")), do: nil, else: Map.get(map, "async_delivery")),
      message_template:
        if(is_nil(Map.get(map, "message_template")),
          do: nil,
          else: Map.get(map, "message_template")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      sender: if(is_nil(Map.get(map, "sender")), do: nil, else: Map.get(map, "sender")),
      token_alphabet:
        if(is_nil(Map.get(map, "token_alphabet")), do: nil, else: Map.get(map, "token_alphabet")),
      token_alphabet_type:
        if(is_nil(Map.get(map, "token_alphabet_type")),
          do: nil,
          else: Inttegro.OTPAlphabetType.decode(Map.get(map, "token_alphabet_type"))
        ),
      validity_duration_in_minutes:
        if(is_nil(Map.get(map, "validity_duration_in_minutes")),
          do: nil,
          else: Map.get(map, "validity_duration_in_minutes")
        ),
      recipient: Map.fetch!(map, "recipient"),
      service_name: Map.fetch!(map, "service_name"),
      token_size: Map.fetch!(map, "token_size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "async_delivery" =>
        if(is_nil(value.async_delivery),
          do: nil,
          else: Inttegro.Codec.encode(value.async_delivery)
        ),
      "message_template" =>
        if(is_nil(value.message_template),
          do: nil,
          else: Inttegro.Codec.encode(value.message_template)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "sender" => if(is_nil(value.sender), do: nil, else: Inttegro.Codec.encode(value.sender)),
      "token_alphabet" =>
        if(is_nil(value.token_alphabet),
          do: nil,
          else: Inttegro.Codec.encode(value.token_alphabet)
        ),
      "token_alphabet_type" =>
        if(is_nil(value.token_alphabet_type),
          do: nil,
          else: Inttegro.OTPAlphabetType.encode(value.token_alphabet_type)
        ),
      "validity_duration_in_minutes" =>
        if(is_nil(value.validity_duration_in_minutes),
          do: nil,
          else: Inttegro.Codec.encode(value.validity_duration_in_minutes)
        ),
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "service_name" => Inttegro.Codec.encode(value.service_name),
      "token_size" => Inttegro.Codec.encode(value.token_size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.InlineProductDetailsInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :price, :quantity, :type]
  defstruct about: nil,
            custom_data: nil,
            reference: nil,
            tax_code: nil,
            name: nil,
            price: nil,
            quantity: nil,
            type: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          reference: String.t() | nil,
          tax_code: String.t() | nil,
          name: String.t(),
          price: Inttegro.PriceParams.t(),
          quantity: integer(),
          type: Inttegro.ProductType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      name: Map.fetch!(map, "name"),
      price: Inttegro.PriceParams.from_map(Map.fetch!(map, "price")),
      quantity: Map.fetch!(map, "quantity"),
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "name" => Inttegro.Codec.encode(value.name),
      "price" => Inttegro.Codec.encode(value.price),
      "quantity" => Inttegro.Codec.encode(value.quantity),
      "type" => Inttegro.ProductType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.InvoiceSettings do
  @moduledoc "Typed Inttegro domain value."
  defstruct number: nil, memo: nil, footer: nil, custom_data: nil

  @type t :: %__MODULE__{
          number: String.t() | nil,
          memo: String.t() | nil,
          footer: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      memo: if(is_nil(Map.get(map, "memo")), do: nil, else: Map.get(map, "memo")),
      footer: if(is_nil(Map.get(map, "footer")), do: nil, else: Map.get(map, "footer")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "memo" => if(is_nil(value.memo), do: nil, else: Inttegro.Codec.encode(value.memo)),
      "footer" => if(is_nil(value.footer), do: nil, else: Inttegro.Codec.encode(value.footer)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.InvoiceSettingsInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct number: nil, memo: nil, footer: nil, custom_data: nil

  @type t :: %__MODULE__{
          number: String.t() | nil,
          memo: String.t() | nil,
          footer: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      memo: if(is_nil(Map.get(map, "memo")), do: nil, else: Map.get(map, "memo")),
      footer: if(is_nil(Map.get(map, "footer")), do: nil, else: Map.get(map, "footer")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "memo" => if(is_nil(value.memo), do: nil, else: Inttegro.Codec.encode(value.memo)),
      "footer" => if(is_nil(value.footer), do: nil, else: Inttegro.Codec.encode(value.footer)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ListCountrySpecsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.LookupBalanceTransactionRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:transaction_id]
  defstruct transaction_id: nil

  @type t :: %__MODULE__{
          transaction_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      transaction_id: Map.fetch!(map, "transaction_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "transaction_id" => Inttegro.Codec.encode(value.transaction_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupBalancesRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct []
  @type t :: %__MODULE__{}
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{}
  end

  @spec to_map(t()) :: map()
  def to_map(_value) do
    %{} |> Enum.reject(fn {_key, item} -> is_nil(item) end) |> Map.new()
  end
end

defmodule Inttegro.LookupBroadcastRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:broadcast_id]
  defstruct broadcast_id: nil

  @type t :: %__MODULE__{
          broadcast_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      broadcast_id: Map.fetch!(map, "broadcast_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "broadcast_id" => Inttegro.Codec.encode(value.broadcast_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupChimeRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:chime_id]
  defstruct chime_id: nil

  @type t :: %__MODULE__{
          chime_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_id: Map.fetch!(map, "chime_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "chime_id" => Inttegro.Codec.encode(value.chime_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupCustomerRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_id]
  defstruct customer_id: nil

  @type t :: %__MODULE__{
          customer_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      customer_id: Map.fetch!(map, "customer_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "customer_id" => Inttegro.Codec.encode(value.customer_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupFileLinkRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct id: nil

  @type t :: %__MODULE__{
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupFileRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:file_id]
  defstruct file_id: nil

  @type t :: %__MODULE__{
          file_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      file_id: Map.fetch!(map, "file_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "file_id" => Inttegro.Codec.encode(value.file_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupOTPRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:transaction_id]
  defstruct transaction_id: nil

  @type t :: %__MODULE__{
          transaction_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      transaction_id: Map.fetch!(map, "transaction_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "transaction_id" => Inttegro.Codec.encode(value.transaction_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct order_id: nil

  @type t :: %__MODULE__{
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupPaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct payment_method_id: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupPayoutRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payout_id]
  defstruct payout_id: nil

  @type t :: %__MODULE__{
          payout_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payout_id: Map.fetch!(map, "payout_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payout_id" => Inttegro.Codec.encode(value.payout_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupPriceRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:price_id]
  defstruct price_id: nil

  @type t :: %__MODULE__{
          price_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      price_id: Map.fetch!(map, "price_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "price_id" => Inttegro.Codec.encode(value.price_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupProductRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:product_id]
  defstruct product_id: nil

  @type t :: %__MODULE__{
          product_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      product_id: Map.fetch!(map, "product_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "product_id" => Inttegro.Codec.encode(value.product_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupPurchaseIntentRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct id: nil

  @type t :: %__MODULE__{
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupRefundRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:refund_id]
  defstruct refund_id: nil

  @type t :: %__MODULE__{
          refund_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      refund_id: Map.fetch!(map, "refund_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "refund_id" => Inttegro.Codec.encode(value.refund_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupScheduleRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:schedule_id]
  defstruct schedule_id: nil

  @type t :: %__MODULE__{
          schedule_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      schedule_id: Map.fetch!(map, "schedule_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "schedule_id" => Inttegro.Codec.encode(value.schedule_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupSecretKeyRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:secret_key_id]
  defstruct secret_key_id: nil

  @type t :: %__MODULE__{
          secret_key_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.LookupUploadRequestRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct id: nil

  @type t :: %__MODULE__{
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplate do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          about: String.t() | nil,
          channel: Inttegro.MessageTemplateChannel.t(),
          purpose: String.t(),
          locale: String.t(),
          status: Inttegro.MessageTemplateStatus.t(),
          version: integer(),
          published_version: integer() | nil,
          draft_version: integer(),
          has_unpublished_changes: boolean(),
          variables: [Inttegro.MessageTemplateVariable.t()] | nil,
          sms: Inttegro.MessageTemplateSMSContent.t() | nil,
          email: Inttegro.MessageTemplateEmailContent.t() | nil,
          attachments: [String.t()] | nil,
          created_at: String.t(),
          updated_at: String.t(),
          published_at: String.t() | nil,
          archived_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      channel: Inttegro.MessageTemplateChannel.decode(Map.fetch!(map, "channel")),
      purpose: Map.fetch!(map, "purpose"),
      locale: Map.fetch!(map, "locale"),
      status: Inttegro.MessageTemplateStatus.decode(Map.fetch!(map, "status")),
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
              Inttegro.MessageTemplateVariable.from_map(item)
            end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.MessageTemplateSMSContent.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.MessageTemplateEmailContent.from_map(Map.get(map, "email"))
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

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "channel" => Inttegro.MessageTemplateChannel.encode(value.channel),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "locale" => Inttegro.Codec.encode(value.locale),
      "status" => Inttegro.MessageTemplateStatus.encode(value.status),
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

defmodule Inttegro.MessageTemplateEmailContent do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:subject, :html]
  defstruct subject: nil, html: nil, from_: nil, reply_to: nil, headers: nil

  @type t :: %__MODULE__{
          subject: String.t(),
          html: String.t(),
          from_: Inttegro.MessageTemplateMailbox.t() | nil,
          reply_to: Inttegro.MessageTemplateMailbox.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      subject: Map.fetch!(map, "subject"),
      html: Map.fetch!(map, "html"),
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplateMailbox.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplateMailbox.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        )
    }
  end

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

defmodule Inttegro.MessageTemplateEmailContentInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:subject, :html]
  defstruct from_: nil, reply_to: nil, headers: nil, subject: nil, html: nil

  @type t :: %__MODULE__{
          from_: Inttegro.MessageTemplateMailboxInput.t() | nil,
          reply_to: Inttegro.MessageTemplateMailboxInput.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          subject: String.t(),
          html: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplateMailboxInput.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplateMailboxInput.from_map(Map.get(map, "reply_to"))
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

defmodule Inttegro.MessageTemplateIDRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct id: nil

  @type t :: %__MODULE__{
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateMailbox do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:address]
  defstruct address: nil, name: nil

  @type t :: %__MODULE__{
          address: String.t(),
          name: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Map.fetch!(map, "address"),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name"))
    }
  end

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

defmodule Inttegro.MessageTemplateMailboxInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:address]
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address: Map.fetch!(map, "address")
    }
  end

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

defmodule Inttegro.MessageTemplatePreview do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:message_template, :rendered]
  defstruct message_template: nil, rendered: nil

  @type t :: %__MODULE__{
          message_template: Inttegro.MessageTemplate.t(),
          rendered: Inttegro.RenderedMessageTemplate.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template: Inttegro.MessageTemplate.from_map(Map.fetch!(map, "message_template")),
      rendered: Inttegro.RenderedMessageTemplate.from_map(Map.fetch!(map, "rendered"))
    }
  end

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

defmodule Inttegro.MessageTemplateReferenceInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:template_id]
  defstruct variables: nil, template_id: nil

  @type t :: %__MODULE__{
          variables: %{optional(String.t()) => term()} | nil,
          template_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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

defmodule Inttegro.MessageTemplateSMSContent do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @type t :: %__MODULE__{
          message_template: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template: Map.fetch!(map, "message_template")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateSMSContentInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @type t :: %__MODULE__{
          message_template: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template: Map.fetch!(map, "message_template")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateSafetyResult do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:content_hash, :normalized_text, :scanner, :status]
  defstruct content_hash: nil,
            links: nil,
            normalized_text: nil,
            quarantine_notes: nil,
            reason_codes: nil,
            sanitized_html: nil,
            scanner: nil,
            status: nil

  @type t :: %__MODULE__{
          content_hash: String.t(),
          links: [Inttegro.MessageTemplateScannedLink.t()] | nil,
          normalized_text: String.t(),
          quarantine_notes: String.t() | nil,
          reason_codes: [String.t()] | nil,
          sanitized_html: String.t() | nil,
          scanner: String.t(),
          status: Inttegro.ContentSafetyStatus.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      content_hash: Map.fetch!(map, "content_hash"),
      links:
        if(is_nil(Map.get(map, "links")),
          do: nil,
          else:
            Enum.map(Map.get(map, "links"), fn item ->
              Inttegro.MessageTemplateScannedLink.from_map(item)
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
      status: Inttegro.ContentSafetyStatus.decode(Map.fetch!(map, "status"))
    }
  end

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
      "status" => Inttegro.ContentSafetyStatus.encode(value.status)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateScannedLink do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:raw, :scheme, :status]
  defstruct host: nil, raw: nil, reason: nil, scheme: nil, status: nil

  @type t :: %__MODULE__{
          host: String.t() | nil,
          raw: String.t(),
          reason: String.t() | nil,
          scheme: String.t(),
          status: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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

defmodule Inttegro.MessageTemplateVariable do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name, :required, :type]
  defstruct about: nil, default: nil, items: nil, name: nil, required: nil, type: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          items: [Inttegro.MessageTemplateVariableItem.t()] | nil,
          name: String.t(),
          required: boolean(),
          type: Inttegro.MessageTemplateVariableType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.MessageTemplateVariableItem.from_map(item)
            end)
        ),
      name: Map.fetch!(map, "name"),
      required: Map.fetch!(map, "required"),
      type: Inttegro.MessageTemplateVariableType.decode(Map.fetch!(map, "type"))
    }
  end

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
      "type" => Inttegro.MessageTemplateVariableType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateVariableInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :type]
  defstruct required: nil, default: nil, about: nil, items: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          required: boolean() | nil,
          default: term() | nil,
          about: String.t() | nil,
          items: [Inttegro.MessageTemplateVariableItemInput.t()] | nil,
          name: String.t(),
          type: Inttegro.MessageTemplateVariableType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.MessageTemplateVariableItemInput.from_map(item)
            end)
        ),
      name: Map.fetch!(map, "name"),
      type: Inttegro.MessageTemplateVariableType.decode(Map.fetch!(map, "type"))
    }
  end

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
      "type" => Inttegro.MessageTemplateVariableType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateVariableItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name, :required, :type]
  defstruct about: nil, default: nil, name: nil, required: nil, type: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          name: String.t(),
          required: boolean(),
          type: Inttegro.MessageTemplateVariableItemType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      name: Map.fetch!(map, "name"),
      required: Map.fetch!(map, "required"),
      type: Inttegro.MessageTemplateVariableItemType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "name" => Inttegro.Codec.encode(value.name),
      "required" => Inttegro.Codec.encode(value.required),
      "type" => Inttegro.MessageTemplateVariableItemType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplateVariableItemInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :type]
  defstruct about: nil, default: nil, required: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          about: String.t() | nil,
          default: term() | nil,
          required: boolean() | nil,
          name: String.t(),
          type: Inttegro.MessageTemplateVariableItemType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      default: if(is_nil(Map.get(map, "default")), do: nil, else: Map.get(map, "default")),
      required: if(is_nil(Map.get(map, "required")), do: nil, else: Map.get(map, "required")),
      name: Map.fetch!(map, "name"),
      type: Inttegro.MessageTemplateVariableItemType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "default" => if(is_nil(value.default), do: nil, else: Inttegro.Codec.encode(value.default)),
      "required" =>
        if(is_nil(value.required), do: nil, else: Inttegro.Codec.encode(value.required)),
      "name" => Inttegro.Codec.encode(value.name),
      "type" => Inttegro.MessageTemplateVariableItemType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.MessageTemplatesPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :message_templates]
  defstruct number: nil, size: nil, message_templates: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          message_templates: [Inttegro.MessageTemplate.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      message_templates:
        Enum.map(Map.fetch!(map, "message_templates"), fn item ->
          Inttegro.MessageTemplate.from_map(item)
        end)
    }
  end

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

defmodule Inttegro.OTPTransaction do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:expires_at, :full_message, :id, :initiated_at, :status]
  defstruct cancel_reason: nil,
            canceled_at: nil,
            expires_at: nil,
            full_message: nil,
            id: nil,
            initiated_at: nil,
            status: nil,
            transmission: nil

  @type t :: %__MODULE__{
          cancel_reason: String.t() | nil,
          canceled_at: String.t() | nil,
          expires_at: String.t(),
          full_message: String.t(),
          id: String.t(),
          initiated_at: String.t(),
          status: Inttegro.OTPStatus.t(),
          transmission: Inttegro.OTPTransmission.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      cancel_reason:
        if(is_nil(Map.get(map, "cancel_reason")), do: nil, else: Map.get(map, "cancel_reason")),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      expires_at: Map.fetch!(map, "expires_at"),
      full_message: Map.fetch!(map, "full_message"),
      id: Map.fetch!(map, "id"),
      initiated_at: Map.fetch!(map, "initiated_at"),
      status: Inttegro.OTPStatus.decode(Map.fetch!(map, "status")),
      transmission:
        if(is_nil(Map.get(map, "transmission")),
          do: nil,
          else: Inttegro.OTPTransmission.from_map(Map.get(map, "transmission"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "cancel_reason" =>
        if(is_nil(value.cancel_reason), do: nil, else: Inttegro.Codec.encode(value.cancel_reason)),
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "expires_at" => Inttegro.Codec.encode(value.expires_at),
      "full_message" => Inttegro.Codec.encode(value.full_message),
      "id" => Inttegro.Codec.encode(value.id),
      "initiated_at" => Inttegro.Codec.encode(value.initiated_at),
      "status" => Inttegro.OTPStatus.encode(value.status),
      "transmission" =>
        if(is_nil(value.transmission), do: nil, else: Inttegro.Codec.encode(value.transmission))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OTPTransmission do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:recipient, :sender_id]
  defstruct recipient: nil, sender_id: nil, sent_at: nil, sent_via: nil, status: nil

  @type t :: %__MODULE__{
          recipient: String.t(),
          sender_id: String.t(),
          sent_at: String.t() | nil,
          sent_via: String.t() | nil,
          status: Inttegro.OTPTransmissionStatus.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recipient: Map.fetch!(map, "recipient"),
      sender_id: Map.fetch!(map, "sender_id"),
      sent_at: if(is_nil(Map.get(map, "sent_at")), do: nil, else: Map.get(map, "sent_at")),
      sent_via: if(is_nil(Map.get(map, "sent_via")), do: nil, else: Map.get(map, "sent_via")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.OTPTransmissionStatus.decode(Map.get(map, "status"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "sender_id" => Inttegro.Codec.encode(value.sender_id),
      "sent_at" => if(is_nil(value.sent_at), do: nil, else: Inttegro.Codec.encode(value.sent_at)),
      "sent_via" =>
        if(is_nil(value.sent_via), do: nil, else: Inttegro.Codec.encode(value.sent_via)),
      "status" =>
        if(is_nil(value.status),
          do: nil,
          else: Inttegro.OTPTransmissionStatus.encode(value.status)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OTPVerification do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:transaction, :verification_attempt]
  defstruct transaction: nil, verification_attempt: nil

  @type t :: %__MODULE__{
          transaction: Inttegro.OTPTransaction.t(),
          verification_attempt: Inttegro.OTPVerificationAttempt.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      transaction: Inttegro.OTPTransaction.from_map(Map.fetch!(map, "transaction")),
      verification_attempt:
        Inttegro.OTPVerificationAttempt.from_map(Map.fetch!(map, "verification_attempt"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "transaction" => Inttegro.Codec.encode(value.transaction),
      "verification_attempt" => Inttegro.Codec.encode(value.verification_attempt)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OTPVerificationAttempt do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:attempted_at, :id, :presented_token, :recipient, :result]
  defstruct attempted_at: nil, id: nil, presented_token: nil, recipient: nil, result: nil

  @type t :: %__MODULE__{
          attempted_at: String.t(),
          id: String.t(),
          presented_token: String.t(),
          recipient: String.t(),
          result: Inttegro.OTPVerificationAttemptResult.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      attempted_at: Map.fetch!(map, "attempted_at"),
      id: Map.fetch!(map, "id"),
      presented_token: Map.fetch!(map, "presented_token"),
      recipient: Map.fetch!(map, "recipient"),
      result: Inttegro.OTPVerificationAttemptResult.from_map(Map.fetch!(map, "result"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "attempted_at" => Inttegro.Codec.encode(value.attempted_at),
      "id" => Inttegro.Codec.encode(value.id),
      "presented_token" => Inttegro.Codec.encode(value.presented_token),
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "result" => Inttegro.Codec.encode(value.result)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OTPVerificationAttemptResult do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:verdict]
  defstruct detail: nil, verdict: nil

  @type t :: %__MODULE__{
          detail: String.t() | nil,
          verdict: Inttegro.OTPVerificationVerdict.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      detail: if(is_nil(Map.get(map, "detail")), do: nil, else: Map.get(map, "detail")),
      verdict: Inttegro.OTPVerificationVerdict.decode(Map.fetch!(map, "verdict"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "detail" => if(is_nil(value.detail), do: nil, else: Inttegro.Codec.encode(value.detail)),
      "verdict" => Inttegro.OTPVerificationVerdict.encode(value.verdict)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Order do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:customer, :id, :initiated_at, :status]
  defstruct canceled_at: nil,
            checkout_settings: nil,
            completed_at: nil,
            created_from: nil,
            custom_data: nil,
            customer: nil,
            expires_at: nil,
            id: nil,
            initiated_at: nil,
            invoice: nil,
            number: nil,
            receipt_number: nil,
            refunds: nil,
            invoice_settings: nil,
            status: nil,
            sealed_at: nil,
            line_item_group: nil,
            payment: nil,
            paid_at: nil,
            payment_due_at: nil,
            payout_settings: nil,
            reference: nil,
            shipping: nil

  @type t :: %__MODULE__{
          canceled_at: String.t() | nil,
          checkout_settings: Inttegro.OrderCheckoutSettings.t() | nil,
          completed_at: String.t() | nil,
          created_from: Inttegro.OrderCreatedFrom.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          customer: Inttegro.OrderCustomer.t(),
          expires_at: String.t() | nil,
          id: String.t(),
          initiated_at: String.t(),
          invoice: Inttegro.OrderInvoice.t() | nil,
          number: String.t() | nil,
          receipt_number: String.t() | nil,
          refunds: [Inttegro.Refund.t()] | nil,
          invoice_settings: Inttegro.InvoiceSettings.t() | nil,
          status: Inttegro.OrderStatus.t(),
          sealed_at: String.t() | nil,
          line_item_group: Inttegro.OrderLineItemGroup.t() | nil,
          payment: Inttegro.Payment.t() | nil,
          paid_at: String.t() | nil,
          payment_due_at: String.t() | nil,
          payout_settings: %{optional(String.t()) => term()} | nil,
          reference: String.t() | nil,
          shipping: %{optional(String.t()) => term()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      checkout_settings:
        if(is_nil(Map.get(map, "checkout_settings")),
          do: nil,
          else: Inttegro.OrderCheckoutSettings.from_map(Map.get(map, "checkout_settings"))
        ),
      completed_at:
        if(is_nil(Map.get(map, "completed_at")), do: nil, else: Map.get(map, "completed_at")),
      created_from:
        if(is_nil(Map.get(map, "created_from")),
          do: nil,
          else: Inttegro.OrderCreatedFrom.from_map(Map.get(map, "created_from"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      customer: Inttegro.OrderCustomer.from_map(Map.fetch!(map, "customer")),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      id: Map.fetch!(map, "id"),
      initiated_at: Map.fetch!(map, "initiated_at"),
      invoice:
        if(is_nil(Map.get(map, "invoice")),
          do: nil,
          else: Inttegro.OrderInvoice.from_map(Map.get(map, "invoice"))
        ),
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      receipt_number:
        if(is_nil(Map.get(map, "receipt_number")), do: nil, else: Map.get(map, "receipt_number")),
      refunds:
        if(is_nil(Map.get(map, "refunds")),
          do: nil,
          else: Enum.map(Map.get(map, "refunds"), fn item -> Inttegro.Refund.from_map(item) end)
        ),
      invoice_settings:
        if(is_nil(Map.get(map, "invoice_settings")),
          do: nil,
          else: Inttegro.InvoiceSettings.from_map(Map.get(map, "invoice_settings"))
        ),
      status: Inttegro.OrderStatus.decode(Map.fetch!(map, "status")),
      sealed_at: if(is_nil(Map.get(map, "sealed_at")), do: nil, else: Map.get(map, "sealed_at")),
      line_item_group:
        if(is_nil(Map.get(map, "line_item_group")),
          do: nil,
          else: Inttegro.OrderLineItemGroup.from_map(Map.get(map, "line_item_group"))
        ),
      payment:
        if(is_nil(Map.get(map, "payment")),
          do: nil,
          else: Inttegro.Payment.from_map(Map.get(map, "payment"))
        ),
      paid_at: if(is_nil(Map.get(map, "paid_at")), do: nil, else: Map.get(map, "paid_at")),
      payment_due_at:
        if(is_nil(Map.get(map, "payment_due_at")), do: nil, else: Map.get(map, "payment_due_at")),
      payout_settings:
        if(is_nil(Map.get(map, "payout_settings")),
          do: nil,
          else: Map.new(Map.get(map, "payout_settings"), fn {key, value} -> {key, value} end)
        ),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      shipping:
        if(is_nil(Map.get(map, "shipping")),
          do: nil,
          else: Map.new(Map.get(map, "shipping"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "checkout_settings" =>
        if(is_nil(value.checkout_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.checkout_settings)
        ),
      "completed_at" =>
        if(is_nil(value.completed_at), do: nil, else: Inttegro.Codec.encode(value.completed_at)),
      "created_from" =>
        if(is_nil(value.created_from), do: nil, else: Inttegro.Codec.encode(value.created_from)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "customer" => Inttegro.Codec.encode(value.customer),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "initiated_at" => Inttegro.Codec.encode(value.initiated_at),
      "invoice" => if(is_nil(value.invoice), do: nil, else: Inttegro.Codec.encode(value.invoice)),
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "receipt_number" =>
        if(is_nil(value.receipt_number),
          do: nil,
          else: Inttegro.Codec.encode(value.receipt_number)
        ),
      "refunds" =>
        if(is_nil(value.refunds),
          do: nil,
          else: Enum.map(value.refunds, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "invoice_settings" =>
        if(is_nil(value.invoice_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.invoice_settings)
        ),
      "status" => Inttegro.OrderStatus.encode(value.status),
      "sealed_at" =>
        if(is_nil(value.sealed_at), do: nil, else: Inttegro.Codec.encode(value.sealed_at)),
      "line_item_group" =>
        if(is_nil(value.line_item_group),
          do: nil,
          else: Inttegro.Codec.encode(value.line_item_group)
        ),
      "payment" => if(is_nil(value.payment), do: nil, else: Inttegro.Codec.encode(value.payment)),
      "paid_at" => if(is_nil(value.paid_at), do: nil, else: Inttegro.Codec.encode(value.paid_at)),
      "payment_due_at" =>
        if(is_nil(value.payment_due_at),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_due_at)
        ),
      "payout_settings" =>
        if(is_nil(value.payout_settings),
          do: nil,
          else:
            Map.new(value.payout_settings, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "shipping" =>
        if(is_nil(value.shipping),
          do: nil,
          else:
            Map.new(value.shipping, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderAddress do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:country]
  defstruct name: nil,
            phone_number: nil,
            line1: nil,
            line2: nil,
            city: nil,
            region: nil,
            post_code: nil,
            country: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          phone_number: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          city: String.t() | nil,
          region: String.t() | nil,
          post_code: String.t() | nil,
          country: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      line1: if(is_nil(Map.get(map, "line1")), do: nil, else: Map.get(map, "line1")),
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      country: Map.fetch!(map, "country")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "line1" => if(is_nil(value.line1), do: nil, else: Inttegro.Codec.encode(value.line1)),
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "country" => Inttegro.Codec.encode(value.country)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderCheckoutSettings do
  @moduledoc "Typed Inttegro domain value."
  defstruct redirect_url: nil, cancel_url: nil

  @type t :: %__MODULE__{
          redirect_url: String.t() | nil,
          cancel_url: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      redirect_url:
        if(is_nil(Map.get(map, "redirect_url")), do: nil, else: Map.get(map, "redirect_url")),
      cancel_url:
        if(is_nil(Map.get(map, "cancel_url")), do: nil, else: Map.get(map, "cancel_url"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "redirect_url" =>
        if(is_nil(value.redirect_url), do: nil, else: Inttegro.Codec.encode(value.redirect_url)),
      "cancel_url" =>
        if(is_nil(value.cancel_url), do: nil, else: Inttegro.Codec.encode(value.cancel_url))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderCreatedFrom do
  @moduledoc "Typed Inttegro domain value."
  defstruct source: nil, resource_type: nil, resource_id: nil

  @type t :: %__MODULE__{
          source: String.t() | nil,
          resource_type: Inttegro.OrderCreatedFromResourceType.t() | nil,
          resource_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      source: if(is_nil(Map.get(map, "source")), do: nil, else: Map.get(map, "source")),
      resource_type:
        if(is_nil(Map.get(map, "resource_type")),
          do: nil,
          else: Inttegro.OrderCreatedFromResourceType.decode(Map.get(map, "resource_type"))
        ),
      resource_id:
        if(is_nil(Map.get(map, "resource_id")), do: nil, else: Map.get(map, "resource_id"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "source" => if(is_nil(value.source), do: nil, else: Inttegro.Codec.encode(value.source)),
      "resource_type" =>
        if(is_nil(value.resource_type),
          do: nil,
          else: Inttegro.OrderCreatedFromResourceType.encode(value.resource_type)
        ),
      "resource_id" =>
        if(is_nil(value.resource_id), do: nil, else: Inttegro.Codec.encode(value.resource_id))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderCustomer do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :guest, :name]
  defstruct id: nil,
            guest: nil,
            name: nil,
            email_address: nil,
            phone_number: nil,
            billing_address: nil,
            shipping_address: nil

  @type t :: %__MODULE__{
          id: String.t(),
          guest: boolean(),
          name: String.t(),
          email_address: String.t() | nil,
          phone_number: String.t() | nil,
          billing_address: Inttegro.OrderAddress.t() | nil,
          shipping_address: Inttegro.OrderAddress.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      guest: Map.fetch!(map, "guest"),
      name: Map.fetch!(map, "name"),
      email_address:
        if(is_nil(Map.get(map, "email_address")), do: nil, else: Map.get(map, "email_address")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      billing_address:
        if(is_nil(Map.get(map, "billing_address")),
          do: nil,
          else: Inttegro.OrderAddress.from_map(Map.get(map, "billing_address"))
        ),
      shipping_address:
        if(is_nil(Map.get(map, "shipping_address")),
          do: nil,
          else: Inttegro.OrderAddress.from_map(Map.get(map, "shipping_address"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "guest" => Inttegro.Codec.encode(value.guest),
      "name" => Inttegro.Codec.encode(value.name),
      "email_address" =>
        if(is_nil(value.email_address), do: nil, else: Inttegro.Codec.encode(value.email_address)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "billing_address" =>
        if(is_nil(value.billing_address),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_address)
        ),
      "shipping_address" =>
        if(is_nil(value.shipping_address),
          do: nil,
          else: Inttegro.Codec.encode(value.shipping_address)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentDelivery do
  @moduledoc "Typed Inttegro domain value."
  defstruct deliveries: nil,
            document_kind: nil,
            document_url: nil,
            failed_channels: nil,
            failures: nil,
            sent_channels: nil

  @type t :: %__MODULE__{
          deliveries: [Inttegro.OrderDocumentDeliveryAttempt.t()] | nil,
          document_kind: Inttegro.OrderDocumentKind.t() | nil,
          document_url: String.t() | nil,
          failed_channels: [String.t()] | nil,
          failures: [Inttegro.OrderDocumentDeliveryFailure.t()] | nil,
          sent_channels: [String.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      deliveries:
        if(is_nil(Map.get(map, "deliveries")),
          do: nil,
          else:
            Enum.map(Map.get(map, "deliveries"), fn item ->
              Inttegro.OrderDocumentDeliveryAttempt.from_map(item)
            end)
        ),
      document_kind:
        if(is_nil(Map.get(map, "document_kind")),
          do: nil,
          else: Inttegro.OrderDocumentKind.decode(Map.get(map, "document_kind"))
        ),
      document_url:
        if(is_nil(Map.get(map, "document_url")), do: nil, else: Map.get(map, "document_url")),
      failed_channels:
        if(is_nil(Map.get(map, "failed_channels")),
          do: nil,
          else: Enum.map(Map.get(map, "failed_channels"), fn item -> item end)
        ),
      failures:
        if(is_nil(Map.get(map, "failures")),
          do: nil,
          else:
            Enum.map(Map.get(map, "failures"), fn item ->
              Inttegro.OrderDocumentDeliveryFailure.from_map(item)
            end)
        ),
      sent_channels:
        if(is_nil(Map.get(map, "sent_channels")),
          do: nil,
          else: Enum.map(Map.get(map, "sent_channels"), fn item -> item end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "deliveries" =>
        if(is_nil(value.deliveries),
          do: nil,
          else: Enum.map(value.deliveries, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "document_kind" =>
        if(is_nil(value.document_kind),
          do: nil,
          else: Inttegro.OrderDocumentKind.encode(value.document_kind)
        ),
      "document_url" =>
        if(is_nil(value.document_url), do: nil, else: Inttegro.Codec.encode(value.document_url)),
      "failed_channels" =>
        if(is_nil(value.failed_channels),
          do: nil,
          else: Enum.map(value.failed_channels, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "failures" =>
        if(is_nil(value.failures),
          do: nil,
          else: Enum.map(value.failures, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "sent_channels" =>
        if(is_nil(value.sent_channels),
          do: nil,
          else: Enum.map(value.sent_channels, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentDeliveryAttempt do
  @moduledoc "Typed Inttegro domain value."
  defstruct channel: nil, chime_id: nil

  @type t :: %__MODULE__{
          channel: Inttegro.DeliveryChannel.t() | nil,
          chime_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.DeliveryChannel.decode(Map.get(map, "channel"))
        ),
      chime_id: if(is_nil(Map.get(map, "chime_id")), do: nil, else: Map.get(map, "chime_id"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "channel" =>
        if(is_nil(value.channel), do: nil, else: Inttegro.DeliveryChannel.encode(value.channel)),
      "chime_id" =>
        if(is_nil(value.chime_id), do: nil, else: Inttegro.Codec.encode(value.chime_id))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentDeliveryFailure do
  @moduledoc "Typed Inttegro domain value."
  defstruct channel: nil, error: nil

  @type t :: %__MODULE__{
          channel: Inttegro.DeliveryChannel.t() | nil,
          error: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.DeliveryChannel.decode(Map.get(map, "channel"))
        ),
      error: if(is_nil(Map.get(map, "error")), do: nil, else: Map.get(map, "error"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "channel" =>
        if(is_nil(value.channel), do: nil, else: Inttegro.DeliveryChannel.encode(value.channel)),
      "error" => if(is_nil(value.error), do: nil, else: Inttegro.Codec.encode(value.error))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentDeliveryRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct order_id: nil

  @type t :: %__MODULE__{
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentDeliveryResult do
  @moduledoc "Typed Inttegro domain value."
  defstruct delivery: nil, error: nil, order: nil

  @type t :: %__MODULE__{
          delivery: Inttegro.OrderDocumentDelivery.t() | nil,
          error: Inttegro.Error.t() | nil,
          order: Inttegro.Order.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Inttegro.OrderDocumentDelivery.from_map(Map.get(map, "delivery"))
        ),
      error:
        if(is_nil(Map.get(map, "error")),
          do: nil,
          else: Inttegro.Error.from_map(Map.get(map, "error"))
        ),
      order:
        if(is_nil(Map.get(map, "order")),
          do: nil,
          else: Inttegro.Order.from_map(Map.get(map, "order"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "delivery" =>
        if(is_nil(value.delivery), do: nil, else: Inttegro.Codec.encode(value.delivery)),
      "error" => if(is_nil(value.error), do: nil, else: Inttegro.Codec.encode(value.error)),
      "order" => if(is_nil(value.order), do: nil, else: Inttegro.Codec.encode(value.order))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderDocumentFormat do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:url]
  defstruct url: nil

  @type t :: %__MODULE__{
          url: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      url: Map.fetch!(map, "url")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "url" => Inttegro.Codec.encode(value.url)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderFeeLineItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type, :fee]
  defstruct type: nil, fee: nil

  @type t :: %__MODULE__{
          type: String.t(),
          fee: Inttegro.OrderFeeLineItemFee.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Map.fetch!(map, "type"),
      fee: Inttegro.OrderFeeLineItemFee.from_map(Map.fetch!(map, "fee"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.Codec.encode(value.type),
      "fee" => Inttegro.Codec.encode(value.fee)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderFeeLineItemFee do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :amount, :label]
  defstruct id: nil, description: nil, tax_code: nil, amount: nil, label: nil

  @type t :: %__MODULE__{
          id: String.t(),
          description: String.t() | nil,
          tax_code: String.t() | nil,
          amount: Inttegro.Amount.t(),
          label: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      amount: Inttegro.Amount.from_map(Map.fetch!(map, "amount")),
      label: Map.fetch!(map, "label")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "amount" => Inttegro.Codec.encode(value.amount),
      "label" => Inttegro.Codec.encode(value.label)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderInvoice do
  @moduledoc "Typed Inttegro domain value."
  defstruct number: nil, format: nil

  @type t :: %__MODULE__{
          number: String.t() | nil,
          format: Inttegro.OrderInvoiceFormat.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      format:
        if(is_nil(Map.get(map, "format")),
          do: nil,
          else: Inttegro.OrderInvoiceFormat.from_map(Map.get(map, "format"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "format" => if(is_nil(value.format), do: nil, else: Inttegro.Codec.encode(value.format))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderInvoiceFormat do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:web, :pdf]
  defstruct web: nil, pdf: nil, receipt: nil

  @type t :: %__MODULE__{
          web: Inttegro.OrderDocumentFormat.t(),
          pdf: Inttegro.OrderDocumentFormat.t(),
          receipt: Inttegro.OrderDocumentFormat.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      web: Inttegro.OrderDocumentFormat.from_map(Map.fetch!(map, "web")),
      pdf: Inttegro.OrderDocumentFormat.from_map(Map.fetch!(map, "pdf")),
      receipt:
        if(is_nil(Map.get(map, "receipt")),
          do: nil,
          else: Inttegro.OrderDocumentFormat.from_map(Map.get(map, "receipt"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "web" => Inttegro.Codec.encode(value.web),
      "pdf" => Inttegro.Codec.encode(value.pdf),
      "receipt" => if(is_nil(value.receipt), do: nil, else: Inttegro.Codec.encode(value.receipt))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderLineItemGroup do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:line_items, :total]
  defstruct line_items: nil, total: nil

  @type t :: %__MODULE__{
          line_items: [term()],
          total: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      line_items: Enum.map(Map.fetch!(map, "line_items"), fn item -> item end),
      total: Inttegro.Amount.from_map(Map.fetch!(map, "total"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "line_items" => Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end),
      "total" => Inttegro.Codec.encode(value.total)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderPage do
  @moduledoc "Typed Inttegro domain value."
  defstruct number: nil, size: nil, orders: nil

  @type t :: %__MODULE__{
          number: integer() | nil,
          size: integer() | nil,
          orders: [Inttegro.Order.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      orders:
        if(is_nil(Map.get(map, "orders")),
          do: nil,
          else: Enum.map(Map.get(map, "orders"), fn item -> Inttegro.Order.from_map(item) end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "orders" =>
        if(is_nil(value.orders),
          do: nil,
          else: Enum.map(value.orders, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderPayoutSettingsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct destination: nil, enable_fx: nil

  @type t :: %__MODULE__{
          destination: Inttegro.OrderPayoutSettingsRequestDestination.t() | nil,
          enable_fx: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      destination:
        if(is_nil(Map.get(map, "destination")),
          do: nil,
          else:
            Inttegro.OrderPayoutSettingsRequestDestination.from_map(Map.get(map, "destination"))
        ),
      enable_fx: if(is_nil(Map.get(map, "enable_fx")), do: nil, else: Map.get(map, "enable_fx"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "destination" =>
        if(is_nil(value.destination), do: nil, else: Inttegro.Codec.encode(value.destination)),
      "enable_fx" =>
        if(is_nil(value.enable_fx), do: nil, else: Inttegro.Codec.encode(value.enable_fx))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderPayoutSettingsRequestDestination do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:financial_account_id]
  defstruct financial_account_id: nil

  @type t :: %__MODULE__{
          financial_account_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      financial_account_id: Map.fetch!(map, "financial_account_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "financial_account_id" => Inttegro.Codec.encode(value.financial_account_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderProductLineItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type, :product]
  defstruct type: nil, product: nil

  @type t :: %__MODULE__{
          type: String.t(),
          product: Inttegro.OrderProductLineItemProduct.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Map.fetch!(map, "type"),
      product: Inttegro.OrderProductLineItemProduct.from_map(Map.fetch!(map, "product"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.Codec.encode(value.type),
      "product" => Inttegro.Codec.encode(value.product)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderProductLineItemProduct do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :price, :quantity]
  defstruct id: nil,
            product_id: nil,
            price_id: nil,
            reference: nil,
            about: nil,
            custom_data: nil,
            tax_code: nil,
            name: nil,
            category: nil,
            type: nil,
            price: nil,
            quantity: nil

  @type t :: %__MODULE__{
          id: String.t(),
          product_id: String.t() | nil,
          price_id: String.t() | nil,
          reference: String.t() | nil,
          about: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          tax_code: String.t() | nil,
          name: String.t(),
          category: String.t() | nil,
          type: String.t() | nil,
          price: Inttegro.Price.t(),
          quantity: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      price_id: if(is_nil(Map.get(map, "price_id")), do: nil, else: Map.get(map, "price_id")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      name: Map.fetch!(map, "name"),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type")),
      price: Inttegro.Price.from_map(Map.fetch!(map, "price")),
      quantity: Map.fetch!(map, "quantity")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id)),
      "price_id" =>
        if(is_nil(value.price_id), do: nil, else: Inttegro.Codec.encode(value.price_id)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "name" => Inttegro.Codec.encode(value.name),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.Codec.encode(value.type)),
      "price" => Inttegro.Codec.encode(value.price),
      "quantity" => Inttegro.Codec.encode(value.quantity)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderShippingLineItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type, :shipping]
  defstruct type: nil, shipping: nil

  @type t :: %__MODULE__{
          type: String.t(),
          shipping: Inttegro.OrderShippingLineItemShipping.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Map.fetch!(map, "type"),
      shipping: Inttegro.OrderShippingLineItemShipping.from_map(Map.fetch!(map, "shipping"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.Codec.encode(value.type),
      "shipping" => Inttegro.Codec.encode(value.shipping)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.OrderShippingLineItemShipping do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :fee]
  defstruct id: nil, tax_code: nil, label: nil, fee: nil

  @type t :: %__MODULE__{
          id: String.t(),
          tax_code: String.t() | nil,
          label: String.t() | nil,
          fee: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      fee: Inttegro.Amount.from_map(Map.fetch!(map, "fee"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "fee" => Inttegro.Codec.encode(value.fee)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageBalanceTransactionsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number, :page_size]
  defstruct page_number: nil, page_size: nil

  @type t :: %__MODULE__{
          page_number: integer(),
          page_size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_number: Map.fetch!(map, "page_number"),
      page_size: Map.fetch!(map, "page_size")
    }
  end

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

defmodule Inttegro.PageChimesRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct customer_id: nil, page_number: nil, page_size: nil, recipient: nil

  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          page_number: integer() | nil,
          page_size: integer() | nil,
          recipient: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      customer_id:
        if(is_nil(Map.get(map, "customer_id")), do: nil, else: Map.get(map, "customer_id")),
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "customer_id" =>
        if(is_nil(value.customer_id), do: nil, else: Inttegro.Codec.encode(value.customer_id)),
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "recipient" =>
        if(is_nil(value.recipient), do: nil, else: Inttegro.Codec.encode(value.recipient))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageCustomersRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number]
  defstruct page_size: nil, page_number: nil

  @type t :: %__MODULE__{
          page_size: integer() | nil,
          page_number: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      page_number: Map.fetch!(map, "page_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "page_number" => Inttegro.Codec.encode(value.page_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageFileLinksRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct file_id: nil, status: nil, page_number: nil, page_size: nil

  @type t :: %__MODULE__{
          file_id: String.t() | nil,
          status: Inttegro.FileLinkStatus.t() | nil,
          page_number: integer() | nil,
          page_size: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      file_id: if(is_nil(Map.get(map, "file_id")), do: nil, else: Map.get(map, "file_id")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.FileLinkStatus.decode(Map.get(map, "status"))
        ),
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "file_id" => if(is_nil(value.file_id), do: nil, else: Inttegro.Codec.encode(value.file_id)),
      "status" =>
        if(is_nil(value.status), do: nil, else: Inttegro.FileLinkStatus.encode(value.status)),
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageFilesRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct purpose: nil,
            status: nil,
            page_number: nil,
            page_size: nil,
            created_after: nil,
            created_before: nil

  @type t :: %__MODULE__{
          purpose: String.t() | nil,
          status: Inttegro.FileStatus.t() | nil,
          page_number: integer() | nil,
          page_size: integer() | nil,
          created_after: String.t() | nil,
          created_before: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.FileStatus.decode(Map.get(map, "status"))
        ),
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      created_after:
        if(is_nil(Map.get(map, "created_after")), do: nil, else: Map.get(map, "created_after")),
      created_before:
        if(is_nil(Map.get(map, "created_before")), do: nil, else: Map.get(map, "created_before"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "status" =>
        if(is_nil(value.status), do: nil, else: Inttegro.FileStatus.encode(value.status)),
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "created_after" =>
        if(is_nil(value.created_after), do: nil, else: Inttegro.Codec.encode(value.created_after)),
      "created_before" =>
        if(is_nil(value.created_before),
          do: nil,
          else: Inttegro.Codec.encode(value.created_before)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageMessageTemplatesRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct page: nil, size: nil, status: nil, channel: nil, purpose: nil, locale: nil

  @type t :: %__MODULE__{
          page: integer() | nil,
          size: integer() | nil,
          status: Inttegro.MessageTemplateStatus.t() | nil,
          channel: Inttegro.MessageTemplateChannel.t() | nil,
          purpose: String.t() | nil,
          locale: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.MessageTemplateStatus.decode(Map.get(map, "status"))
        ),
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.MessageTemplateChannel.decode(Map.get(map, "channel"))
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page" => if(is_nil(value.page), do: nil, else: Inttegro.Codec.encode(value.page)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "status" =>
        if(is_nil(value.status),
          do: nil,
          else: Inttegro.MessageTemplateStatus.encode(value.status)
        ),
      "channel" =>
        if(is_nil(value.channel),
          do: nil,
          else: Inttegro.MessageTemplateChannel.encode(value.channel)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "locale" => if(is_nil(value.locale), do: nil, else: Inttegro.Codec.encode(value.locale))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageOrdersRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_size]
  defstruct page_number: nil, customer_id: nil, page_size: nil

  @type t :: %__MODULE__{
          page_number: integer() | nil,
          customer_id: String.t() | nil,
          page_size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      customer_id:
        if(is_nil(Map.get(map, "customer_id")), do: nil, else: Map.get(map, "customer_id")),
      page_size: Map.fetch!(map, "page_size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "customer_id" =>
        if(is_nil(value.customer_id), do: nil, else: Inttegro.Codec.encode(value.customer_id)),
      "page_size" => Inttegro.Codec.encode(value.page_size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PagePayoutsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number]
  defstruct page_size: nil, page_number: nil

  @type t :: %__MODULE__{
          page_size: integer() | nil,
          page_number: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      page_number: Map.fetch!(map, "page_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "page_number" => Inttegro.Codec.encode(value.page_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageProductsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number]
  defstruct page_size: nil, page_number: nil

  @type t :: %__MODULE__{
          page_size: integer() | nil,
          page_number: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      page_number: Map.fetch!(map, "page_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "page_number" => Inttegro.Codec.encode(value.page_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PagePurchaseIntentsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number, :page_size]
  defstruct page_number: nil, page_size: nil

  @type t :: %__MODULE__{
          page_number: integer(),
          page_size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_number: Map.fetch!(map, "page_number"),
      page_size: Map.fetch!(map, "page_size")
    }
  end

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

defmodule Inttegro.PageRefundsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:page_number]
  defstruct page_size: nil, page_number: nil

  @type t :: %__MODULE__{
          page_size: integer() | nil,
          page_number: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      page_number: Map.fetch!(map, "page_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "page_number" => Inttegro.Codec.encode(value.page_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PageSecretKeysRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct page: nil, number: nil, size: nil

  @type t :: %__MODULE__{
          page: integer() | nil,
          number: integer() | nil,
          size: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size"))
    }
  end

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

defmodule Inttegro.PageUploadRequestsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct purpose: nil, status: nil, resource: nil, page_number: nil, page_size: nil

  @type t :: %__MODULE__{
          purpose: String.t() | nil,
          status: Inttegro.UploadRequestStatus.t() | nil,
          resource: Inttegro.FileResourceInput.t() | nil,
          page_number: integer() | nil,
          page_size: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.UploadRequestStatus.decode(Map.get(map, "status"))
        ),
      resource:
        if(is_nil(Map.get(map, "resource")),
          do: nil,
          else: Inttegro.FileResourceInput.from_map(Map.get(map, "resource"))
        ),
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "status" =>
        if(is_nil(value.status), do: nil, else: Inttegro.UploadRequestStatus.encode(value.status)),
      "resource" =>
        if(is_nil(value.resource), do: nil, else: Inttegro.Codec.encode(value.resource)),
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct payment_method_data: nil, payment_method_id: nil, paid_out_of_band: nil, order_id: nil

  @type t :: %__MODULE__{
          payment_method_data: Inttegro.PaymentMethodDataInput.t() | nil,
          payment_method_id: String.t() | nil,
          paid_out_of_band: boolean() | nil,
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_data:
        if(is_nil(Map.get(map, "payment_method_data")),
          do: nil,
          else: Inttegro.PaymentMethodDataInput.from_map(Map.get(map, "payment_method_data"))
        ),
      payment_method_id:
        if(is_nil(Map.get(map, "payment_method_id")),
          do: nil,
          else: Map.get(map, "payment_method_id")
        ),
      paid_out_of_band:
        if(is_nil(Map.get(map, "paid_out_of_band")),
          do: nil,
          else: Map.get(map, "paid_out_of_band")
        ),
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_data" =>
        if(is_nil(value.payment_method_data),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_data)
        ),
      "payment_method_id" =>
        if(is_nil(value.payment_method_id),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_id)
        ),
      "paid_out_of_band" =>
        if(is_nil(value.paid_out_of_band),
          do: nil,
          else: Inttegro.Codec.encode(value.paid_out_of_band)
        ),
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Payment do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :status, :statement_descriptor, :amount, :initiated_at]
  defstruct id: nil,
            status: nil,
            statement_descriptor: nil,
            amount: nil,
            balance_transaction: nil,
            payment_method: nil,
            latest_attempt: nil,
            next_action: nil,
            initiated_at: nil,
            executed_at: nil,
            paid_at: nil,
            canceled_at: nil,
            due_at: nil,
            expired_at: nil,
            failed_at: nil,
            paid_offline: nil,
            payment_method_types: nil,
            payout_configuration: nil

  @type t :: %__MODULE__{
          id: String.t(),
          status: Inttegro.PaymentStatus.t(),
          statement_descriptor: String.t(),
          amount: Inttegro.Amount.t(),
          balance_transaction: Inttegro.BalanceTransaction.t() | nil,
          payment_method: Inttegro.PaymentMethodSnapshot.t() | nil,
          latest_attempt: Inttegro.PaymentAttempt.t() | nil,
          next_action: Inttegro.PaymentNextAction.t() | nil,
          initiated_at: String.t(),
          executed_at: String.t() | nil,
          paid_at: String.t() | nil,
          canceled_at: String.t() | nil,
          due_at: String.t() | nil,
          expired_at: String.t() | nil,
          failed_at: String.t() | nil,
          paid_offline: boolean() | nil,
          payment_method_types: [String.t()] | nil,
          payout_configuration: Inttegro.PaymentPayoutConfiguration.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      status: Inttegro.PaymentStatus.decode(Map.fetch!(map, "status")),
      statement_descriptor: Map.fetch!(map, "statement_descriptor"),
      amount: Inttegro.Amount.from_map(Map.fetch!(map, "amount")),
      balance_transaction:
        if(is_nil(Map.get(map, "balance_transaction")),
          do: nil,
          else: Inttegro.BalanceTransaction.from_map(Map.get(map, "balance_transaction"))
        ),
      payment_method:
        if(is_nil(Map.get(map, "payment_method")),
          do: nil,
          else: Inttegro.PaymentMethodSnapshot.from_map(Map.get(map, "payment_method"))
        ),
      latest_attempt:
        if(is_nil(Map.get(map, "latest_attempt")),
          do: nil,
          else: Inttegro.PaymentAttempt.from_map(Map.get(map, "latest_attempt"))
        ),
      next_action:
        if(is_nil(Map.get(map, "next_action")),
          do: nil,
          else: Inttegro.PaymentNextAction.from_map(Map.get(map, "next_action"))
        ),
      initiated_at: Map.fetch!(map, "initiated_at"),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      paid_at: if(is_nil(Map.get(map, "paid_at")), do: nil, else: Map.get(map, "paid_at")),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      due_at: if(is_nil(Map.get(map, "due_at")), do: nil, else: Map.get(map, "due_at")),
      expired_at:
        if(is_nil(Map.get(map, "expired_at")), do: nil, else: Map.get(map, "expired_at")),
      failed_at: if(is_nil(Map.get(map, "failed_at")), do: nil, else: Map.get(map, "failed_at")),
      paid_offline:
        if(is_nil(Map.get(map, "paid_offline")), do: nil, else: Map.get(map, "paid_offline")),
      payment_method_types:
        if(is_nil(Map.get(map, "payment_method_types")),
          do: nil,
          else: Enum.map(Map.get(map, "payment_method_types"), fn item -> item end)
        ),
      payout_configuration:
        if(is_nil(Map.get(map, "payout_configuration")),
          do: nil,
          else: Inttegro.PaymentPayoutConfiguration.from_map(Map.get(map, "payout_configuration"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "status" => Inttegro.PaymentStatus.encode(value.status),
      "statement_descriptor" => Inttegro.Codec.encode(value.statement_descriptor),
      "amount" => Inttegro.Codec.encode(value.amount),
      "balance_transaction" =>
        if(is_nil(value.balance_transaction),
          do: nil,
          else: Inttegro.Codec.encode(value.balance_transaction)
        ),
      "payment_method" =>
        if(is_nil(value.payment_method),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method)
        ),
      "latest_attempt" =>
        if(is_nil(value.latest_attempt),
          do: nil,
          else: Inttegro.Codec.encode(value.latest_attempt)
        ),
      "next_action" =>
        if(is_nil(value.next_action), do: nil, else: Inttegro.Codec.encode(value.next_action)),
      "initiated_at" => Inttegro.Codec.encode(value.initiated_at),
      "executed_at" =>
        if(is_nil(value.executed_at), do: nil, else: Inttegro.Codec.encode(value.executed_at)),
      "paid_at" => if(is_nil(value.paid_at), do: nil, else: Inttegro.Codec.encode(value.paid_at)),
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "due_at" => if(is_nil(value.due_at), do: nil, else: Inttegro.Codec.encode(value.due_at)),
      "expired_at" =>
        if(is_nil(value.expired_at), do: nil, else: Inttegro.Codec.encode(value.expired_at)),
      "failed_at" =>
        if(is_nil(value.failed_at), do: nil, else: Inttegro.Codec.encode(value.failed_at)),
      "paid_offline" =>
        if(is_nil(value.paid_offline), do: nil, else: Inttegro.Codec.encode(value.paid_offline)),
      "payment_method_types" =>
        if(is_nil(value.payment_method_types),
          do: nil,
          else: Enum.map(value.payment_method_types, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "payout_configuration" =>
        if(is_nil(value.payout_configuration),
          do: nil,
          else: Inttegro.Codec.encode(value.payout_configuration)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentAttempt do
  @moduledoc "Typed Inttegro domain value."
  defstruct payment_method_type: nil,
            payment_method_id: nil,
            reference: nil,
            status: nil,
            initiated_at: nil,
            succeeded_at: nil

  @type t :: %__MODULE__{
          payment_method_type: String.t() | nil,
          payment_method_id: String.t() | nil,
          reference: String.t() | nil,
          status: Inttegro.PaymentAttemptStatus.t() | nil,
          initiated_at: String.t() | nil,
          succeeded_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_type:
        if(is_nil(Map.get(map, "payment_method_type")),
          do: nil,
          else: Map.get(map, "payment_method_type")
        ),
      payment_method_id:
        if(is_nil(Map.get(map, "payment_method_id")),
          do: nil,
          else: Map.get(map, "payment_method_id")
        ),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      status:
        if(is_nil(Map.get(map, "status")),
          do: nil,
          else: Inttegro.PaymentAttemptStatus.decode(Map.get(map, "status"))
        ),
      initiated_at:
        if(is_nil(Map.get(map, "initiated_at")), do: nil, else: Map.get(map, "initiated_at")),
      succeeded_at:
        if(is_nil(Map.get(map, "succeeded_at")), do: nil, else: Map.get(map, "succeeded_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_type" =>
        if(is_nil(value.payment_method_type),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_type)
        ),
      "payment_method_id" =>
        if(is_nil(value.payment_method_id),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_id)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "status" =>
        if(is_nil(value.status),
          do: nil,
          else: Inttegro.PaymentAttemptStatus.encode(value.status)
        ),
      "initiated_at" =>
        if(is_nil(value.initiated_at), do: nil, else: Inttegro.Codec.encode(value.initiated_at)),
      "succeeded_at" =>
        if(is_nil(value.succeeded_at), do: nil, else: Inttegro.Codec.encode(value.succeeded_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethod do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:active, :created_at, :customer_id, :id, :type]
  defstruct active: nil,
            app_customer_local_fingerprint: nil,
            app_local_fingerprint: nil,
            archived_at: nil,
            bank_account: nil,
            created_at: nil,
            custom_data: nil,
            customer_id: nil,
            ephemeral: nil,
            expires_on: nil,
            id: nil,
            mobile_money: nil,
            owner: nil,
            type: nil,
            supplied: nil,
            universal_fingerprint: nil,
            verification: nil,
            verified_at: nil

  @type t :: %__MODULE__{
          active: boolean(),
          app_customer_local_fingerprint: String.t() | nil,
          app_local_fingerprint: String.t() | nil,
          archived_at: String.t() | nil,
          bank_account: Inttegro.PaymentMethodBankAccount.t() | nil,
          created_at: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          customer_id: String.t(),
          ephemeral: boolean() | nil,
          expires_on: String.t() | nil,
          id: String.t(),
          mobile_money: Inttegro.PaymentMethodMobileMoney.t() | nil,
          owner: Inttegro.PaymentMethodOwner.t() | nil,
          type: Inttegro.PaymentMethodType.t(),
          supplied: Inttegro.PaymentMethodSupplied.t() | nil,
          universal_fingerprint: String.t() | nil,
          verification: Inttegro.PaymentMethodVerification.t() | nil,
          verified_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      app_customer_local_fingerprint:
        if(is_nil(Map.get(map, "app_customer_local_fingerprint")),
          do: nil,
          else: Map.get(map, "app_customer_local_fingerprint")
        ),
      app_local_fingerprint:
        if(is_nil(Map.get(map, "app_local_fingerprint")),
          do: nil,
          else: Map.get(map, "app_local_fingerprint")
        ),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at")),
      bank_account:
        if(is_nil(Map.get(map, "bank_account")),
          do: nil,
          else: Inttegro.PaymentMethodBankAccount.from_map(Map.get(map, "bank_account"))
        ),
      created_at: Map.fetch!(map, "created_at"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      customer_id: Map.fetch!(map, "customer_id"),
      ephemeral: if(is_nil(Map.get(map, "ephemeral")), do: nil, else: Map.get(map, "ephemeral")),
      expires_on:
        if(is_nil(Map.get(map, "expires_on")), do: nil, else: Map.get(map, "expires_on")),
      id: Map.fetch!(map, "id"),
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else: Inttegro.PaymentMethodMobileMoney.from_map(Map.get(map, "mobile_money"))
        ),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.PaymentMethodOwner.from_map(Map.get(map, "owner"))
        ),
      type: Inttegro.PaymentMethodType.decode(Map.fetch!(map, "type")),
      supplied:
        if(is_nil(Map.get(map, "supplied")),
          do: nil,
          else: Inttegro.PaymentMethodSupplied.from_map(Map.get(map, "supplied"))
        ),
      universal_fingerprint:
        if(is_nil(Map.get(map, "universal_fingerprint")),
          do: nil,
          else: Map.get(map, "universal_fingerprint")
        ),
      verification:
        if(is_nil(Map.get(map, "verification")),
          do: nil,
          else: Inttegro.PaymentMethodVerification.from_map(Map.get(map, "verification"))
        ),
      verified_at:
        if(is_nil(Map.get(map, "verified_at")), do: nil, else: Map.get(map, "verified_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "active" => Inttegro.Codec.encode(value.active),
      "app_customer_local_fingerprint" =>
        if(is_nil(value.app_customer_local_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.app_customer_local_fingerprint)
        ),
      "app_local_fingerprint" =>
        if(is_nil(value.app_local_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.app_local_fingerprint)
        ),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at)),
      "bank_account" =>
        if(is_nil(value.bank_account), do: nil, else: Inttegro.Codec.encode(value.bank_account)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "customer_id" => Inttegro.Codec.encode(value.customer_id),
      "ephemeral" =>
        if(is_nil(value.ephemeral), do: nil, else: Inttegro.Codec.encode(value.ephemeral)),
      "expires_on" =>
        if(is_nil(value.expires_on), do: nil, else: Inttegro.Codec.encode(value.expires_on)),
      "id" => Inttegro.Codec.encode(value.id),
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money)),
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "type" => Inttegro.PaymentMethodType.encode(value.type),
      "supplied" =>
        if(is_nil(value.supplied), do: nil, else: Inttegro.Codec.encode(value.supplied)),
      "universal_fingerprint" =>
        if(is_nil(value.universal_fingerprint),
          do: nil,
          else: Inttegro.Codec.encode(value.universal_fingerprint)
        ),
      "verification" =>
        if(is_nil(value.verification), do: nil, else: Inttegro.Codec.encode(value.verification)),
      "verified_at" =>
        if(is_nil(value.verified_at), do: nil, else: Inttegro.Codec.encode(value.verified_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodBankAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct ghana_bank_account: nil, type: nil

  @type t :: %__MODULE__{
          ghana_bank_account: Inttegro.PaymentMethodBankAccountGhanaBankAccount.t() | nil,
          type: Inttegro.BankAccountType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      ghana_bank_account:
        if(is_nil(Map.get(map, "ghana_bank_account")),
          do: nil,
          else:
            Inttegro.PaymentMethodBankAccountGhanaBankAccount.from_map(
              Map.get(map, "ghana_bank_account")
            )
        ),
      type: Inttegro.BankAccountType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "ghana_bank_account" =>
        if(is_nil(value.ghana_bank_account),
          do: nil,
          else: Inttegro.Codec.encode(value.ghana_bank_account)
        ),
      "type" => Inttegro.BankAccountType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodBankAccountGhanaBankAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:account_number]
  defstruct branch: nil, name: nil, account_number: nil, sort_code: nil, swift_code: nil

  @type t :: %__MODULE__{
          branch: String.t() | nil,
          name: String.t() | nil,
          account_number: String.t(),
          sort_code: String.t() | nil,
          swift_code: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      branch: if(is_nil(Map.get(map, "branch")), do: nil, else: Map.get(map, "branch")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      account_number: Map.fetch!(map, "account_number"),
      sort_code: if(is_nil(Map.get(map, "sort_code")), do: nil, else: Map.get(map, "sort_code")),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "branch" => if(is_nil(value.branch), do: nil, else: Inttegro.Codec.encode(value.branch)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "sort_code" =>
        if(is_nil(value.sort_code), do: nil, else: Inttegro.Codec.encode(value.sort_code)),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodDataInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type]
  defstruct mobile_money: nil, type: nil

  @type t :: %__MODULE__{
          mobile_money: Inttegro.PaymentMethodDataInputMobileMoney.t() | nil,
          type: Inttegro.PaymentMethodType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else: Inttegro.PaymentMethodDataInputMobileMoney.from_map(Map.get(map, "mobile_money"))
        ),
      type: Inttegro.PaymentMethodType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money)),
      "type" => Inttegro.PaymentMethodType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodDataInputMobileMoney do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:network, :account_number]
  defstruct network: nil, account_number: nil

  @type t :: %__MODULE__{
          network: Inttegro.MobileMoneyNetwork.t(),
          account_number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network")),
      account_number: Map.fetch!(map, "account_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network),
      "account_number" => Inttegro.Codec.encode(value.account_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodDeletion do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:deleted, :payment_method_id]
  defstruct deleted: nil, payment_method_id: nil

  @type t :: %__MODULE__{
          deleted: boolean(),
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      deleted: Map.fetch!(map, "deleted"),
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "deleted" => Inttegro.Codec.encode(value.deleted),
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodMobileMoney do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:account_number, :last4, :network]
  defstruct account_number: nil, last4: nil, network: nil

  @type t :: %__MODULE__{
          account_number: String.t(),
          last4: String.t(),
          network: Inttegro.MobileMoneyNetwork.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_number: Map.fetch!(map, "account_number"),
      last4: Map.fetch!(map, "last4"),
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "last4" => Inttegro.Codec.encode(value.last4),
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodOwner do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name]
  defstruct address: nil, name: nil

  @type t :: %__MODULE__{
          address: Inttegro.PaymentMethodOwnerAddress.t() | nil,
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address:
        if(is_nil(Map.get(map, "address")),
          do: nil,
          else: Inttegro.PaymentMethodOwnerAddress.from_map(Map.get(map, "address"))
        ),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address)),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodOwnerAddress do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:country]
  defstruct city: nil,
            country: nil,
            line_1: nil,
            line_2: nil,
            name: nil,
            phone_number: nil,
            post_code: nil,
            region: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t(),
          line_1: String.t() | nil,
          line_2: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      country: Map.fetch!(map, "country"),
      line_1: if(is_nil(Map.get(map, "line_1")), do: nil, else: Map.get(map, "line_1")),
      line_2: if(is_nil(Map.get(map, "line_2")), do: nil, else: Map.get(map, "line_2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "country" => Inttegro.Codec.encode(value.country),
      "line_1" => if(is_nil(value.line_1), do: nil, else: Inttegro.Codec.encode(value.line_1)),
      "line_2" => if(is_nil(value.line_2), do: nil, else: Inttegro.Codec.encode(value.line_2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodOwnerInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:address, :name]
  defstruct address: nil, name: nil

  @type t :: %__MODULE__{
          address: Inttegro.PaymentMethodOwnerInputAddress.t(),
          name: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Inttegro.PaymentMethodOwnerInputAddress.from_map(Map.fetch!(map, "address")),
      name: Map.fetch!(map, "name")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address),
      "name" => Inttegro.Codec.encode(value.name)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodOwnerInputAddress do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:country]
  defstruct city: nil,
            line1: nil,
            line2: nil,
            name: nil,
            phone_number: nil,
            post_code: nil,
            region: nil,
            country: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil,
          country: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      line1: if(is_nil(Map.get(map, "line1")), do: nil, else: Map.get(map, "line1")),
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region")),
      country: Map.fetch!(map, "country")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "line1" => if(is_nil(value.line1), do: nil, else: Inttegro.Codec.encode(value.line1)),
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region)),
      "country" => Inttegro.Codec.encode(value.country)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :payment_methods, :size]
  defstruct number: nil, payment_methods: nil, size: nil

  @type t :: %__MODULE__{
          number: integer(),
          payment_methods: [Inttegro.PaymentMethod.t()],
          size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      payment_methods:
        Enum.map(Map.fetch!(map, "payment_methods"), fn item ->
          Inttegro.PaymentMethod.from_map(item)
        end),
      size: Map.fetch!(map, "size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "payment_methods" =>
        Enum.map(value.payment_methods, fn item -> Inttegro.Codec.encode(item) end),
      "size" => Inttegro.Codec.encode(value.size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodPageRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct customer_id: nil, page_number: nil, page_size: nil

  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          page_number: integer() | nil,
          page_size: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      customer_id:
        if(is_nil(Map.get(map, "customer_id")), do: nil, else: Map.get(map, "customer_id")),
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "customer_id" =>
        if(is_nil(value.customer_id), do: nil, else: Inttegro.Codec.encode(value.customer_id)),
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSettings do
  @moduledoc "Typed Inttegro domain value."
  defstruct mobile_money: nil, bank_account: nil, card: nil, motito: nil

  @type t :: %__MODULE__{
          mobile_money: Inttegro.PaymentMethodTypeSetting.t() | nil,
          bank_account: Inttegro.PaymentMethodTypeSetting.t() | nil,
          card: Inttegro.PaymentMethodTypeSetting.t() | nil,
          motito: Inttegro.PaymentMethodTypeSetting.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else: Inttegro.PaymentMethodTypeSetting.from_map(Map.get(map, "mobile_money"))
        ),
      bank_account:
        if(is_nil(Map.get(map, "bank_account")),
          do: nil,
          else: Inttegro.PaymentMethodTypeSetting.from_map(Map.get(map, "bank_account"))
        ),
      card:
        if(is_nil(Map.get(map, "card")),
          do: nil,
          else: Inttegro.PaymentMethodTypeSetting.from_map(Map.get(map, "card"))
        ),
      motito:
        if(is_nil(Map.get(map, "motito")),
          do: nil,
          else: Inttegro.PaymentMethodTypeSetting.from_map(Map.get(map, "motito"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money)),
      "bank_account" =>
        if(is_nil(value.bank_account), do: nil, else: Inttegro.Codec.encode(value.bank_account)),
      "card" => if(is_nil(value.card), do: nil, else: Inttegro.Codec.encode(value.card)),
      "motito" => if(is_nil(value.motito), do: nil, else: Inttegro.Codec.encode(value.motito))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSnapshot do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :created_at, :customer_id, :type, :verified]
  defstruct id: nil,
            bank_account: nil,
            card: nil,
            created_at: nil,
            customer_id: nil,
            mobile_money: nil,
            owner: nil,
            type: nil,
            verified: nil,
            verified_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          bank_account: Inttegro.PaymentMethodSnapshotBankAccount.t() | nil,
          card: %{optional(String.t()) => term()} | nil,
          created_at: String.t(),
          customer_id: String.t(),
          mobile_money: Inttegro.PaymentMethodSnapshotMobileMoney.t() | nil,
          owner: Inttegro.PaymentMethodSnapshotOwner.t() | nil,
          type: Inttegro.PaymentMethodType.t(),
          verified: boolean(),
          verified_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      bank_account:
        if(is_nil(Map.get(map, "bank_account")),
          do: nil,
          else: Inttegro.PaymentMethodSnapshotBankAccount.from_map(Map.get(map, "bank_account"))
        ),
      card:
        if(is_nil(Map.get(map, "card")),
          do: nil,
          else: Map.new(Map.get(map, "card"), fn {key, value} -> {key, value} end)
        ),
      created_at: Map.fetch!(map, "created_at"),
      customer_id: Map.fetch!(map, "customer_id"),
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else: Inttegro.PaymentMethodSnapshotMobileMoney.from_map(Map.get(map, "mobile_money"))
        ),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.PaymentMethodSnapshotOwner.from_map(Map.get(map, "owner"))
        ),
      type: Inttegro.PaymentMethodType.decode(Map.fetch!(map, "type")),
      verified: Map.fetch!(map, "verified"),
      verified_at:
        if(is_nil(Map.get(map, "verified_at")), do: nil, else: Map.get(map, "verified_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "bank_account" =>
        if(is_nil(value.bank_account), do: nil, else: Inttegro.Codec.encode(value.bank_account)),
      "card" =>
        if(is_nil(value.card),
          do: nil,
          else:
            Map.new(value.card, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "customer_id" => Inttegro.Codec.encode(value.customer_id),
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money)),
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "type" => Inttegro.PaymentMethodType.encode(value.type),
      "verified" => Inttegro.Codec.encode(value.verified),
      "verified_at" =>
        if(is_nil(value.verified_at), do: nil, else: Inttegro.Codec.encode(value.verified_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSnapshotBankAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, ghana_bank_account: nil

  @type t :: %__MODULE__{
          type: String.t(),
          ghana_bank_account: Inttegro.PaymentMethodSnapshotGhanaBankAccount.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Map.fetch!(map, "type"),
      ghana_bank_account:
        if(is_nil(Map.get(map, "ghana_bank_account")),
          do: nil,
          else:
            Inttegro.PaymentMethodSnapshotGhanaBankAccount.from_map(
              Map.get(map, "ghana_bank_account")
            )
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.Codec.encode(value.type),
      "ghana_bank_account" =>
        if(is_nil(value.ghana_bank_account),
          do: nil,
          else: Inttegro.Codec.encode(value.ghana_bank_account)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSnapshotGhanaBankAccount do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:account_number]
  defstruct account_number: nil, branch: nil, name: nil, sort_code: nil, swift_code: nil

  @type t :: %__MODULE__{
          account_number: String.t(),
          branch: String.t() | nil,
          name: String.t() | nil,
          sort_code: String.t() | nil,
          swift_code: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_number: Map.fetch!(map, "account_number"),
      branch: if(is_nil(Map.get(map, "branch")), do: nil, else: Map.get(map, "branch")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      sort_code: if(is_nil(Map.get(map, "sort_code")), do: nil, else: Map.get(map, "sort_code")),
      swift_code:
        if(is_nil(Map.get(map, "swift_code")), do: nil, else: Map.get(map, "swift_code"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "branch" => if(is_nil(value.branch), do: nil, else: Inttegro.Codec.encode(value.branch)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "sort_code" =>
        if(is_nil(value.sort_code), do: nil, else: Inttegro.Codec.encode(value.sort_code)),
      "swift_code" =>
        if(is_nil(value.swift_code), do: nil, else: Inttegro.Codec.encode(value.swift_code))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSnapshotMobileMoney do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:network, :account_number, :last4]
  defstruct network: nil, account_number: nil, last4: nil

  @type t :: %__MODULE__{
          network: Inttegro.MobileMoneyNetwork.t(),
          account_number: String.t(),
          last4: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network")),
      account_number: Map.fetch!(map, "account_number"),
      last4: Map.fetch!(map, "last4")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network),
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "last4" => Inttegro.Codec.encode(value.last4)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSnapshotOwner do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name]
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t(),
          address: Inttegro.OrderAddress.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      address:
        if(is_nil(Map.get(map, "address")),
          do: nil,
          else: Inttegro.OrderAddress.from_map(Map.get(map, "address"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => Inttegro.Codec.encode(value.name),
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodSupplied do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:by, :supplied_at]
  defstruct attempt_id: nil,
            by: nil,
            channel: nil,
            resource_id: nil,
            resource_type: nil,
            supplied_at: nil

  @type t :: %__MODULE__{
          attempt_id: String.t() | nil,
          by: String.t(),
          channel: String.t() | nil,
          resource_id: String.t() | nil,
          resource_type: String.t() | nil,
          supplied_at: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      attempt_id:
        if(is_nil(Map.get(map, "attempt_id")), do: nil, else: Map.get(map, "attempt_id")),
      by: Map.fetch!(map, "by"),
      channel: if(is_nil(Map.get(map, "channel")), do: nil, else: Map.get(map, "channel")),
      resource_id:
        if(is_nil(Map.get(map, "resource_id")), do: nil, else: Map.get(map, "resource_id")),
      resource_type:
        if(is_nil(Map.get(map, "resource_type")), do: nil, else: Map.get(map, "resource_type")),
      supplied_at: Map.fetch!(map, "supplied_at")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "attempt_id" =>
        if(is_nil(value.attempt_id), do: nil, else: Inttegro.Codec.encode(value.attempt_id)),
      "by" => Inttegro.Codec.encode(value.by),
      "channel" => if(is_nil(value.channel), do: nil, else: Inttegro.Codec.encode(value.channel)),
      "resource_id" =>
        if(is_nil(value.resource_id), do: nil, else: Inttegro.Codec.encode(value.resource_id)),
      "resource_type" =>
        if(is_nil(value.resource_type), do: nil, else: Inttegro.Codec.encode(value.resource_type)),
      "supplied_at" => Inttegro.Codec.encode(value.supplied_at)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodTypeSetting do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:enabled, :confirms_use]
  defstruct type: nil, name: nil, description: nil, enabled: nil, confirms_use: nil

  @type t :: %__MODULE__{
          type: Inttegro.PaymentMethodType.t() | nil,
          name: String.t() | nil,
          description: String.t() | nil,
          enabled: boolean(),
          confirms_use: boolean()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type:
        if(is_nil(Map.get(map, "type")),
          do: nil,
          else: Inttegro.PaymentMethodType.decode(Map.get(map, "type"))
        ),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      enabled: Map.fetch!(map, "enabled"),
      confirms_use: Map.fetch!(map, "confirms_use")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" =>
        if(is_nil(value.type), do: nil, else: Inttegro.PaymentMethodType.encode(value.type)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "enabled" => Inttegro.Codec.encode(value.enabled),
      "confirms_use" => Inttegro.Codec.encode(value.confirms_use)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodVerification do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:initiated_at, :request_id, :type]
  defstruct completed_at: nil, initiated_at: nil, mechanism: nil, request_id: nil, type: nil

  @type t :: %__MODULE__{
          completed_at: String.t() | nil,
          initiated_at: String.t(),
          mechanism: String.t() | nil,
          request_id: String.t(),
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      completed_at:
        if(is_nil(Map.get(map, "completed_at")), do: nil, else: Map.get(map, "completed_at")),
      initiated_at: Map.fetch!(map, "initiated_at"),
      mechanism: if(is_nil(Map.get(map, "mechanism")), do: nil, else: Map.get(map, "mechanism")),
      request_id: Map.fetch!(map, "request_id"),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "completed_at" =>
        if(is_nil(value.completed_at), do: nil, else: Inttegro.Codec.encode(value.completed_at)),
      "initiated_at" => Inttegro.Codec.encode(value.initiated_at),
      "mechanism" =>
        if(is_nil(value.mechanism), do: nil, else: Inttegro.Codec.encode(value.mechanism)),
      "request_id" => Inttegro.Codec.encode(value.request_id),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentMethodVerificationSession do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:payment_method_id, :status]
  defstruct payment_method_id: nil,
            status: nil,
            token_sent_at: nil,
            expires_at: nil,
            delivery: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t(),
          status: String.t(),
          token_sent_at: String.t() | nil,
          expires_at: String.t() | nil,
          delivery: %{optional(String.t()) => term()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id"),
      status: Map.fetch!(map, "status"),
      token_sent_at:
        if(is_nil(Map.get(map, "token_sent_at")), do: nil, else: Map.get(map, "token_sent_at")),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Map.new(Map.get(map, "delivery"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id),
      "status" => Inttegro.Codec.encode(value.status),
      "token_sent_at" =>
        if(is_nil(value.token_sent_at), do: nil, else: Inttegro.Codec.encode(value.token_sent_at)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "delivery" =>
        if(is_nil(value.delivery),
          do: nil,
          else:
            Map.new(value.delivery, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextAction do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, confirm_payment: nil, execute: nil, redirect: nil, authorize: nil

  @type t :: %__MODULE__{
          type: Inttegro.PaymentNextActionType.t(),
          confirm_payment: Inttegro.PaymentNextActionConfirmPayment.t() | nil,
          execute: %{optional(String.t()) => term()} | nil,
          redirect: Inttegro.PaymentNextActionRedirect.t() | nil,
          authorize: Inttegro.PaymentNextActionAuthorize.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.PaymentNextActionType.decode(Map.fetch!(map, "type")),
      confirm_payment:
        if(is_nil(Map.get(map, "confirm_payment")),
          do: nil,
          else: Inttegro.PaymentNextActionConfirmPayment.from_map(Map.get(map, "confirm_payment"))
        ),
      execute:
        if(is_nil(Map.get(map, "execute")),
          do: nil,
          else: Map.new(Map.get(map, "execute"), fn {key, value} -> {key, value} end)
        ),
      redirect:
        if(is_nil(Map.get(map, "redirect")),
          do: nil,
          else: Inttegro.PaymentNextActionRedirect.from_map(Map.get(map, "redirect"))
        ),
      authorize:
        if(is_nil(Map.get(map, "authorize")),
          do: nil,
          else: Inttegro.PaymentNextActionAuthorize.from_map(Map.get(map, "authorize"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.PaymentNextActionType.encode(value.type),
      "confirm_payment" =>
        if(is_nil(value.confirm_payment),
          do: nil,
          else: Inttegro.Codec.encode(value.confirm_payment)
        ),
      "execute" =>
        if(is_nil(value.execute),
          do: nil,
          else:
            Map.new(value.execute, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "redirect" =>
        if(is_nil(value.redirect), do: nil, else: Inttegro.Codec.encode(value.redirect)),
      "authorize" =>
        if(is_nil(value.authorize), do: nil, else: Inttegro.Codec.encode(value.authorize))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionAuthorize do
  @moduledoc "Typed Inttegro domain value."
  defstruct beneficiary: nil, scheme: nil, expires_at: nil

  @type t :: %__MODULE__{
          beneficiary: String.t() | nil,
          scheme: String.t() | nil,
          expires_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      beneficiary:
        if(is_nil(Map.get(map, "beneficiary")), do: nil, else: Map.get(map, "beneficiary")),
      scheme: if(is_nil(Map.get(map, "scheme")), do: nil, else: Map.get(map, "scheme")),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "beneficiary" =>
        if(is_nil(value.beneficiary), do: nil, else: Inttegro.Codec.encode(value.beneficiary)),
      "scheme" => if(is_nil(value.scheme), do: nil, else: Inttegro.Codec.encode(value.scheme)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionConfirmPayment do
  @moduledoc "Typed Inttegro domain value."
  defstruct expires_at: nil, scheme: nil, request: nil, attempt: nil, confirmed: nil, status: nil

  @type t :: %__MODULE__{
          expires_at: String.t() | nil,
          scheme: String.t() | nil,
          request: Inttegro.PaymentNextActionConfirmPaymentRequest.t() | nil,
          attempt: Inttegro.PaymentNextActionConfirmPaymentAttempt.t() | nil,
          confirmed: boolean() | nil,
          status: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      scheme: if(is_nil(Map.get(map, "scheme")), do: nil, else: Map.get(map, "scheme")),
      request:
        if(is_nil(Map.get(map, "request")),
          do: nil,
          else: Inttegro.PaymentNextActionConfirmPaymentRequest.from_map(Map.get(map, "request"))
        ),
      attempt:
        if(is_nil(Map.get(map, "attempt")),
          do: nil,
          else: Inttegro.PaymentNextActionConfirmPaymentAttempt.from_map(Map.get(map, "attempt"))
        ),
      confirmed: if(is_nil(Map.get(map, "confirmed")), do: nil, else: Map.get(map, "confirmed")),
      status: if(is_nil(Map.get(map, "status")), do: nil, else: Map.get(map, "status"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "scheme" => if(is_nil(value.scheme), do: nil, else: Inttegro.Codec.encode(value.scheme)),
      "request" => if(is_nil(value.request), do: nil, else: Inttegro.Codec.encode(value.request)),
      "attempt" => if(is_nil(value.attempt), do: nil, else: Inttegro.Codec.encode(value.attempt)),
      "confirmed" =>
        if(is_nil(value.confirmed), do: nil, else: Inttegro.Codec.encode(value.confirmed)),
      "status" => if(is_nil(value.status), do: nil, else: Inttegro.Codec.encode(value.status))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionConfirmPaymentAttempt do
  @moduledoc "Typed Inttegro domain value."
  defstruct status: nil,
            confirmed: nil,
            reason: nil,
            token: nil,
            executed_at: nil,
            created_at: nil

  @type t :: %__MODULE__{
          status: String.t() | nil,
          confirmed: boolean() | nil,
          reason: String.t() | nil,
          token: String.t() | nil,
          executed_at: String.t() | nil,
          created_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      status: if(is_nil(Map.get(map, "status")), do: nil, else: Map.get(map, "status")),
      confirmed: if(is_nil(Map.get(map, "confirmed")), do: nil, else: Map.get(map, "confirmed")),
      reason: if(is_nil(Map.get(map, "reason")), do: nil, else: Map.get(map, "reason")),
      token: if(is_nil(Map.get(map, "token")), do: nil, else: Map.get(map, "token")),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      created_at:
        if(is_nil(Map.get(map, "created_at")), do: nil, else: Map.get(map, "created_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "status" => if(is_nil(value.status), do: nil, else: Inttegro.Codec.encode(value.status)),
      "confirmed" =>
        if(is_nil(value.confirmed), do: nil, else: Inttegro.Codec.encode(value.confirmed)),
      "reason" => if(is_nil(value.reason), do: nil, else: Inttegro.Codec.encode(value.reason)),
      "token" => if(is_nil(value.token), do: nil, else: Inttegro.Codec.encode(value.token)),
      "executed_at" =>
        if(is_nil(value.executed_at), do: nil, else: Inttegro.Codec.encode(value.executed_at)),
      "created_at" =>
        if(is_nil(value.created_at), do: nil, else: Inttegro.Codec.encode(value.created_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionConfirmPaymentRequest do
  @moduledoc "Typed Inttegro domain value."
  defstruct id: nil, recipient: nil, sent_via: nil, token_size: nil, sender_id: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          recipient: String.t() | nil,
          sent_via: Inttegro.PaymentConfirmationChannel.t() | nil,
          token_size: integer() | nil,
          sender_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient")),
      sent_via:
        if(is_nil(Map.get(map, "sent_via")),
          do: nil,
          else: Inttegro.PaymentConfirmationChannel.decode(Map.get(map, "sent_via"))
        ),
      token_size:
        if(is_nil(Map.get(map, "token_size")), do: nil, else: Map.get(map, "token_size")),
      sender_id: if(is_nil(Map.get(map, "sender_id")), do: nil, else: Map.get(map, "sender_id"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "recipient" =>
        if(is_nil(value.recipient), do: nil, else: Inttegro.Codec.encode(value.recipient)),
      "sent_via" =>
        if(is_nil(value.sent_via),
          do: nil,
          else: Inttegro.PaymentConfirmationChannel.encode(value.sent_via)
        ),
      "token_size" =>
        if(is_nil(value.token_size), do: nil, else: Inttegro.Codec.encode(value.token_size)),
      "sender_id" =>
        if(is_nil(value.sender_id), do: nil, else: Inttegro.Codec.encode(value.sender_id))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionRedirect do
  @moduledoc "Typed Inttegro domain value."
  defstruct redirect_url: nil, valid_until: nil, latest_visit: nil

  @type t :: %__MODULE__{
          redirect_url: String.t() | nil,
          valid_until: String.t() | nil,
          latest_visit: Inttegro.PaymentNextActionRedirectLatestVisit.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      redirect_url:
        if(is_nil(Map.get(map, "redirect_url")), do: nil, else: Map.get(map, "redirect_url")),
      valid_until:
        if(is_nil(Map.get(map, "valid_until")), do: nil, else: Map.get(map, "valid_until")),
      latest_visit:
        if(is_nil(Map.get(map, "latest_visit")),
          do: nil,
          else:
            Inttegro.PaymentNextActionRedirectLatestVisit.from_map(Map.get(map, "latest_visit"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "redirect_url" =>
        if(is_nil(value.redirect_url), do: nil, else: Inttegro.Codec.encode(value.redirect_url)),
      "valid_until" =>
        if(is_nil(value.valid_until), do: nil, else: Inttegro.Codec.encode(value.valid_until)),
      "latest_visit" =>
        if(is_nil(value.latest_visit), do: nil, else: Inttegro.Codec.encode(value.latest_visit))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentNextActionRedirectLatestVisit do
  @moduledoc "Typed Inttegro domain value."
  defstruct user_agent: nil, ip_address: nil, at: nil

  @type t :: %__MODULE__{
          user_agent: String.t() | nil,
          ip_address: String.t() | nil,
          at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      user_agent:
        if(is_nil(Map.get(map, "user_agent")), do: nil, else: Map.get(map, "user_agent")),
      ip_address:
        if(is_nil(Map.get(map, "ip_address")), do: nil, else: Map.get(map, "ip_address")),
      at: if(is_nil(Map.get(map, "at")), do: nil, else: Map.get(map, "at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "user_agent" =>
        if(is_nil(value.user_agent), do: nil, else: Inttegro.Codec.encode(value.user_agent)),
      "ip_address" =>
        if(is_nil(value.ip_address), do: nil, else: Inttegro.Codec.encode(value.ip_address)),
      "at" => if(is_nil(value.at), do: nil, else: Inttegro.Codec.encode(value.at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentPayoutConfiguration do
  @moduledoc "Typed Inttegro domain value."
  defstruct enable_fx: nil, destination: nil

  @type t :: %__MODULE__{
          enable_fx: boolean() | nil,
          destination: Inttegro.PaymentPayoutConfigurationDestination.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      enable_fx: if(is_nil(Map.get(map, "enable_fx")), do: nil, else: Map.get(map, "enable_fx")),
      destination:
        if(is_nil(Map.get(map, "destination")),
          do: nil,
          else:
            Inttegro.PaymentPayoutConfigurationDestination.from_map(Map.get(map, "destination"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "enable_fx" =>
        if(is_nil(value.enable_fx), do: nil, else: Inttegro.Codec.encode(value.enable_fx)),
      "destination" =>
        if(is_nil(value.destination), do: nil, else: Inttegro.Codec.encode(value.destination))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PaymentPayoutConfigurationDestination do
  @moduledoc "Typed Inttegro domain value."
  defstruct financial_account_id: nil

  @type t :: %__MODULE__{
          financial_account_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      financial_account_id:
        if(is_nil(Map.get(map, "financial_account_id")),
          do: nil,
          else: Map.get(map, "financial_account_id")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "financial_account_id" =>
        if(is_nil(value.financial_account_id),
          do: nil,
          else: Inttegro.Codec.encode(value.financial_account_id)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Payout do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:destination_id, :execute_after, :id, :initiated_at, :max_amount, :status]
  defstruct amount: nil,
            balance_transactions: nil,
            canceled_at: nil,
            custom_data: nil,
            destination_id: nil,
            error: nil,
            execute_after: nil,
            executed_by: nil,
            expected_at: nil,
            failed_at: nil,
            id: nil,
            initiated_at: nil,
            initiated_by: nil,
            max_amount: nil,
            reference: nil,
            schedule_id: nil,
            scheduled_at: nil,
            scheduled_by: nil,
            sent_at: nil,
            source_id: nil,
            status: nil,
            succeeded_at: nil

  @type t :: %__MODULE__{
          amount: Inttegro.Amount.t() | nil,
          balance_transactions: [String.t()] | nil,
          canceled_at: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          destination_id: String.t(),
          error: Inttegro.PayoutError.t() | nil,
          execute_after: String.t(),
          executed_by: String.t() | nil,
          expected_at: String.t() | nil,
          failed_at: String.t() | nil,
          id: String.t(),
          initiated_at: String.t(),
          initiated_by: String.t() | nil,
          max_amount: Inttegro.Amount.t(),
          reference: String.t() | nil,
          schedule_id: String.t() | nil,
          scheduled_at: String.t() | nil,
          scheduled_by: String.t() | nil,
          sent_at: String.t() | nil,
          source_id: String.t() | nil,
          status: Inttegro.PayoutStatus.t(),
          succeeded_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      amount:
        if(is_nil(Map.get(map, "amount")),
          do: nil,
          else: Inttegro.Amount.from_map(Map.get(map, "amount"))
        ),
      balance_transactions:
        if(is_nil(Map.get(map, "balance_transactions")),
          do: nil,
          else: Enum.map(Map.get(map, "balance_transactions"), fn item -> item end)
        ),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      destination_id: Map.fetch!(map, "destination_id"),
      error:
        if(is_nil(Map.get(map, "error")),
          do: nil,
          else: Inttegro.PayoutError.from_map(Map.get(map, "error"))
        ),
      execute_after: Map.fetch!(map, "execute_after"),
      executed_by:
        if(is_nil(Map.get(map, "executed_by")), do: nil, else: Map.get(map, "executed_by")),
      expected_at:
        if(is_nil(Map.get(map, "expected_at")), do: nil, else: Map.get(map, "expected_at")),
      failed_at: if(is_nil(Map.get(map, "failed_at")), do: nil, else: Map.get(map, "failed_at")),
      id: Map.fetch!(map, "id"),
      initiated_at: Map.fetch!(map, "initiated_at"),
      initiated_by:
        if(is_nil(Map.get(map, "initiated_by")), do: nil, else: Map.get(map, "initiated_by")),
      max_amount: Inttegro.Amount.from_map(Map.fetch!(map, "max_amount")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      schedule_id:
        if(is_nil(Map.get(map, "schedule_id")), do: nil, else: Map.get(map, "schedule_id")),
      scheduled_at:
        if(is_nil(Map.get(map, "scheduled_at")), do: nil, else: Map.get(map, "scheduled_at")),
      scheduled_by:
        if(is_nil(Map.get(map, "scheduled_by")), do: nil, else: Map.get(map, "scheduled_by")),
      sent_at: if(is_nil(Map.get(map, "sent_at")), do: nil, else: Map.get(map, "sent_at")),
      source_id: if(is_nil(Map.get(map, "source_id")), do: nil, else: Map.get(map, "source_id")),
      status: Inttegro.PayoutStatus.decode(Map.fetch!(map, "status")),
      succeeded_at:
        if(is_nil(Map.get(map, "succeeded_at")), do: nil, else: Map.get(map, "succeeded_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "amount" => if(is_nil(value.amount), do: nil, else: Inttegro.Codec.encode(value.amount)),
      "balance_transactions" =>
        if(is_nil(value.balance_transactions),
          do: nil,
          else: Enum.map(value.balance_transactions, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "destination_id" => Inttegro.Codec.encode(value.destination_id),
      "error" => if(is_nil(value.error), do: nil, else: Inttegro.Codec.encode(value.error)),
      "execute_after" => Inttegro.Codec.encode(value.execute_after),
      "executed_by" =>
        if(is_nil(value.executed_by), do: nil, else: Inttegro.Codec.encode(value.executed_by)),
      "expected_at" =>
        if(is_nil(value.expected_at), do: nil, else: Inttegro.Codec.encode(value.expected_at)),
      "failed_at" =>
        if(is_nil(value.failed_at), do: nil, else: Inttegro.Codec.encode(value.failed_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "initiated_at" => Inttegro.Codec.encode(value.initiated_at),
      "initiated_by" =>
        if(is_nil(value.initiated_by), do: nil, else: Inttegro.Codec.encode(value.initiated_by)),
      "max_amount" => Inttegro.Codec.encode(value.max_amount),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "schedule_id" =>
        if(is_nil(value.schedule_id), do: nil, else: Inttegro.Codec.encode(value.schedule_id)),
      "scheduled_at" =>
        if(is_nil(value.scheduled_at), do: nil, else: Inttegro.Codec.encode(value.scheduled_at)),
      "scheduled_by" =>
        if(is_nil(value.scheduled_by), do: nil, else: Inttegro.Codec.encode(value.scheduled_by)),
      "sent_at" => if(is_nil(value.sent_at), do: nil, else: Inttegro.Codec.encode(value.sent_at)),
      "source_id" =>
        if(is_nil(value.source_id), do: nil, else: Inttegro.Codec.encode(value.source_id)),
      "status" => Inttegro.PayoutStatus.encode(value.status),
      "succeeded_at" =>
        if(is_nil(value.succeeded_at), do: nil, else: Inttegro.Codec.encode(value.succeeded_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutError do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:cause, :message, :occurred_at, :type]
  defstruct cause: nil, message: nil, occurred_at: nil, type: nil

  @type t :: %__MODULE__{
          cause: String.t(),
          message: String.t(),
          occurred_at: String.t(),
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      cause: Map.fetch!(map, "cause"),
      message: Map.fetch!(map, "message"),
      occurred_at: Map.fetch!(map, "occurred_at"),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "cause" => Inttegro.Codec.encode(value.cause),
      "message" => Inttegro.Codec.encode(value.message),
      "occurred_at" => Inttegro.Codec.encode(value.occurred_at),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size]
  defstruct number: nil, size: nil, payouts: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          payouts: [Inttegro.Payout.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      payouts:
        if(is_nil(Map.get(map, "payouts")),
          do: nil,
          else: Enum.map(Map.get(map, "payouts"), fn item -> Inttegro.Payout.from_map(item) end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "payouts" =>
        if(is_nil(value.payouts),
          do: nil,
          else: Enum.map(value.payouts, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsLookup do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:destinations]
  defstruct destinations: nil, fx_enabled: nil, schedule: nil

  @type t :: %__MODULE__{
          destinations: %{optional(String.t()) => String.t()},
          fx_enabled: boolean() | nil,
          schedule: Inttegro.PayoutSettingsLookupSchedule.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      destinations: Map.new(Map.fetch!(map, "destinations"), fn {key, value} -> {key, value} end),
      fx_enabled:
        if(is_nil(Map.get(map, "fx_enabled")), do: nil, else: Map.get(map, "fx_enabled")),
      schedule:
        if(is_nil(Map.get(map, "schedule")),
          do: nil,
          else: Inttegro.PayoutSettingsLookupSchedule.from_map(Map.get(map, "schedule"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "destinations" =>
        Map.new(value.destinations, fn {key, value} ->
          {to_string(key), Inttegro.Codec.encode(value)}
        end),
      "fx_enabled" =>
        if(is_nil(value.fx_enabled), do: nil, else: Inttegro.Codec.encode(value.fx_enabled)),
      "schedule" =>
        if(is_nil(value.schedule), do: nil, else: Inttegro.Codec.encode(value.schedule))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsLookupSchedule do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:aging_spec, :description, :interval, :name, :schedule_on, :type]
  defstruct aging_spec: nil,
            description: nil,
            interval: nil,
            name: nil,
            schedule_on: nil,
            type: nil

  @type t :: %__MODULE__{
          aging_spec: Inttegro.PayoutSettingsLookupScheduleAgingSpec.t(),
          description: String.t(),
          interval: String.t(),
          name: String.t(),
          schedule_on: String.t(),
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      aging_spec:
        Inttegro.PayoutSettingsLookupScheduleAgingSpec.from_map(Map.fetch!(map, "aging_spec")),
      description: Map.fetch!(map, "description"),
      interval: Map.fetch!(map, "interval"),
      name: Map.fetch!(map, "name"),
      schedule_on: Map.fetch!(map, "schedule_on"),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "aging_spec" => Inttegro.Codec.encode(value.aging_spec),
      "description" => Inttegro.Codec.encode(value.description),
      "interval" => Inttegro.Codec.encode(value.interval),
      "name" => Inttegro.Codec.encode(value.name),
      "schedule_on" => Inttegro.Codec.encode(value.schedule_on),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsLookupScheduleAgingSpec do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:abide, :label, :t_plus]
  defstruct abide: nil, label: nil, t_plus: nil

  @type t :: %__MODULE__{
          abide: String.t(),
          label: String.t(),
          t_plus: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      abide: Map.fetch!(map, "abide"),
      label: Map.fetch!(map, "label"),
      t_plus: Map.fetch!(map, "t_plus")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "abide" => Inttegro.Codec.encode(value.abide),
      "label" => Inttegro.Codec.encode(value.label),
      "t_plus" => Inttegro.Codec.encode(value.t_plus)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsMutation do
  @moduledoc "Typed Inttegro domain value."
  defstruct destinations: nil, id: nil, schedule: nil

  @type t :: %__MODULE__{
          destinations: %{optional(String.t()) => String.t()} | nil,
          id: String.t() | nil,
          schedule: Inttegro.PayoutSettingsMutationSchedule.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      destinations:
        if(is_nil(Map.get(map, "destinations")),
          do: nil,
          else: Map.new(Map.get(map, "destinations"), fn {key, value} -> {key, value} end)
        ),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      schedule:
        if(is_nil(Map.get(map, "schedule")),
          do: nil,
          else: Inttegro.PayoutSettingsMutationSchedule.from_map(Map.get(map, "schedule"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "destinations" =>
        if(is_nil(value.destinations),
          do: nil,
          else:
            Map.new(value.destinations, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "schedule" =>
        if(is_nil(value.schedule), do: nil, else: Inttegro.Codec.encode(value.schedule))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsMutationSchedule do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:description, :id, :interval, :name, :schedule_on, :spec, :type]
  defstruct description: nil,
            id: nil,
            interval: nil,
            name: nil,
            schedule_on: nil,
            spec: nil,
            type: nil

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          interval: String.t(),
          name: String.t(),
          schedule_on: String.t(),
          spec: Inttegro.PayoutSettingsMutationScheduleSpec.t(),
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      description: Map.fetch!(map, "description"),
      id: Map.fetch!(map, "id"),
      interval: Map.fetch!(map, "interval"),
      name: Map.fetch!(map, "name"),
      schedule_on: Map.fetch!(map, "schedule_on"),
      spec: Inttegro.PayoutSettingsMutationScheduleSpec.from_map(Map.fetch!(map, "spec")),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "description" => Inttegro.Codec.encode(value.description),
      "id" => Inttegro.Codec.encode(value.id),
      "interval" => Inttegro.Codec.encode(value.interval),
      "name" => Inttegro.Codec.encode(value.name),
      "schedule_on" => Inttegro.Codec.encode(value.schedule_on),
      "spec" => Inttegro.Codec.encode(value.spec),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PayoutSettingsMutationScheduleSpec do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:abide, :id, :label, :t_plus]
  defstruct abide: nil, id: nil, label: nil, t_plus: nil

  @type t :: %__MODULE__{
          abide: String.t(),
          id: String.t(),
          label: String.t(),
          t_plus: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      abide: Map.fetch!(map, "abide"),
      id: Map.fetch!(map, "id"),
      label: Map.fetch!(map, "label"),
      t_plus: Map.fetch!(map, "t_plus")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "abide" => Inttegro.Codec.encode(value.abide),
      "id" => Inttegro.Codec.encode(value.id),
      "label" => Inttegro.Codec.encode(value.label),
      "t_plus" => Inttegro.Codec.encode(value.t_plus)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Price do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @type t :: %__MODULE__{
          currency: Inttegro.Currency.t(),
          value: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PriceActionRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:price_id]
  defstruct price_id: nil

  @type t :: %__MODULE__{
          price_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      price_id: Map.fetch!(map, "price_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "price_id" => Inttegro.Codec.encode(value.price_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PriceEmbeddedProduct do
  @moduledoc "Typed Inttegro domain value."
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
            updated_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          about: String.t() | nil,
          active: boolean(),
          archived_at: String.t() | nil,
          attributes: [Inttegro.PriceEmbeddedProductAttributesItem.t()] | nil,
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
          type: Inttegro.ProductType.t(),
          unit_dim: String.t() | nil,
          updated_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.PriceEmbeddedProductAttributesItem.from_map(item)
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
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type")),
      unit_dim: if(is_nil(Map.get(map, "unit_dim")), do: nil, else: Map.get(map, "unit_dim")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at"))
    }
  end

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
      "type" => Inttegro.ProductType.encode(value.type),
      "unit_dim" =>
        if(is_nil(value.unit_dim), do: nil, else: Inttegro.Codec.encode(value.unit_dim)),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PriceEmbeddedProductAttributesItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name, :value]
  defstruct name: nil, value: nil

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      value: Map.fetch!(map, "value")
    }
  end

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

defmodule Inttegro.PricePage do
  @moduledoc "Typed Inttegro domain value."
  defstruct number: nil, size: nil, prices: nil

  @type t :: %__MODULE__{
          number: integer() | nil,
          size: integer() | nil,
          prices: [Inttegro.CatalogPrice.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      prices:
        if(is_nil(Map.get(map, "prices")),
          do: nil,
          else:
            Enum.map(Map.get(map, "prices"), fn item -> Inttegro.CatalogPrice.from_map(item) end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "prices" =>
        if(is_nil(value.prices),
          do: nil,
          else: Enum.map(value.prices, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PricePageItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :active, :nominal, :created_at]
  defstruct id: nil,
            label: nil,
            about: nil,
            active: nil,
            nominal: nil,
            product_id: nil,
            product: nil,
            created_at: nil,
            updated_at: nil,
            archived_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          about: String.t() | nil,
          active: boolean(),
          nominal: Inttegro.Amount.t(),
          product_id: String.t() | nil,
          product: Inttegro.PriceEmbeddedProduct.t() | nil,
          created_at: String.t(),
          updated_at: String.t() | nil,
          archived_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      active: Map.fetch!(map, "active"),
      nominal: Inttegro.Amount.from_map(Map.fetch!(map, "nominal")),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id")),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PriceEmbeddedProduct.from_map(Map.get(map, "product"))
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "active" => Inttegro.Codec.encode(value.active),
      "nominal" => Inttegro.Codec.encode(value.nominal),
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id)),
      "product" => if(is_nil(value.product), do: nil, else: Inttegro.Codec.encode(value.product)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PricePageRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct page_number: nil, page_size: nil, product_id: nil

  @type t :: %__MODULE__{
          page_number: integer() | nil,
          page_size: integer() | nil,
          product_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      page_number:
        if(is_nil(Map.get(map, "page_number")), do: nil, else: Map.get(map, "page_number")),
      page_size: if(is_nil(Map.get(map, "page_size")), do: nil, else: Map.get(map, "page_size")),
      product_id:
        if(is_nil(Map.get(map, "product_id")), do: nil, else: Map.get(map, "product_id"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "page_number" =>
        if(is_nil(value.page_number), do: nil, else: Inttegro.Codec.encode(value.page_number)),
      "page_size" =>
        if(is_nil(value.page_size), do: nil, else: Inttegro.Codec.encode(value.page_size)),
      "product_id" =>
        if(is_nil(value.product_id), do: nil, else: Inttegro.Codec.encode(value.product_id))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PriceParams do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:currency, :value]
  defstruct currency: nil, value: nil

  @type t :: %__MODULE__{
          currency: Inttegro.Currency.t(),
          value: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      currency: Inttegro.Currency.decode(Map.fetch!(map, "currency")),
      value: Map.fetch!(map, "value")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "currency" => Inttegro.Currency.encode(value.currency),
      "value" => Inttegro.Codec.encode(value.value)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.Product do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :type, :name, :active, :created_at]
  defstruct id: nil,
            type: nil,
            reference: nil,
            name: nil,
            description: nil,
            about: nil,
            tax_code: nil,
            category: nil,
            prices: nil,
            shipment: nil,
            media: nil,
            attributes: nil,
            dimensions: nil,
            custom_data: nil,
            active: nil,
            created_at: nil,
            updated_at: nil,
            archived_at: nil,
            published_at: nil,
            unit_dim: nil

  @type t :: %__MODULE__{
          id: String.t(),
          type: Inttegro.ProductType.t(),
          reference: String.t() | nil,
          name: String.t(),
          description: String.t() | nil,
          about: String.t() | nil,
          tax_code: String.t() | nil,
          category: String.t() | nil,
          prices: [Inttegro.ProductPriceSummary.t()] | nil,
          shipment: Inttegro.ProductShipment.t() | nil,
          media: Inttegro.ProductMedia.t() | nil,
          attributes: [Inttegro.ProductAttribute.t()] | nil,
          dimensions: Inttegro.ProductDimensions.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          active: boolean(),
          created_at: String.t(),
          updated_at: String.t() | nil,
          archived_at: String.t() | nil,
          published_at: String.t() | nil,
          unit_dim: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      name: Map.fetch!(map, "name"),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      prices:
        if(is_nil(Map.get(map, "prices")),
          do: nil,
          else:
            Enum.map(Map.get(map, "prices"), fn item ->
              Inttegro.ProductPriceSummary.from_map(item)
            end)
        ),
      shipment:
        if(is_nil(Map.get(map, "shipment")),
          do: nil,
          else: Inttegro.ProductShipment.from_map(Map.get(map, "shipment"))
        ),
      media:
        if(is_nil(Map.get(map, "media")),
          do: nil,
          else: Inttegro.ProductMedia.from_map(Map.get(map, "media"))
        ),
      attributes:
        if(is_nil(Map.get(map, "attributes")),
          do: nil,
          else:
            Enum.map(Map.get(map, "attributes"), fn item ->
              Inttegro.ProductAttribute.from_map(item)
            end)
        ),
      dimensions:
        if(is_nil(Map.get(map, "dimensions")),
          do: nil,
          else: Inttegro.ProductDimensions.from_map(Map.get(map, "dimensions"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      active: Map.fetch!(map, "active"),
      created_at: Map.fetch!(map, "created_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      archived_at:
        if(is_nil(Map.get(map, "archived_at")), do: nil, else: Map.get(map, "archived_at")),
      published_at:
        if(is_nil(Map.get(map, "published_at")), do: nil, else: Map.get(map, "published_at")),
      unit_dim: if(is_nil(Map.get(map, "unit_dim")), do: nil, else: Map.get(map, "unit_dim"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "type" => Inttegro.ProductType.encode(value.type),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "name" => Inttegro.Codec.encode(value.name),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "prices" =>
        if(is_nil(value.prices),
          do: nil,
          else: Enum.map(value.prices, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "shipment" =>
        if(is_nil(value.shipment), do: nil, else: Inttegro.Codec.encode(value.shipment)),
      "media" => if(is_nil(value.media), do: nil, else: Inttegro.Codec.encode(value.media)),
      "attributes" =>
        if(is_nil(value.attributes),
          do: nil,
          else: Enum.map(value.attributes, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "dimensions" =>
        if(is_nil(value.dimensions), do: nil, else: Inttegro.Codec.encode(value.dimensions)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "active" => Inttegro.Codec.encode(value.active),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "archived_at" =>
        if(is_nil(value.archived_at), do: nil, else: Inttegro.Codec.encode(value.archived_at)),
      "published_at" =>
        if(is_nil(value.published_at), do: nil, else: Inttegro.Codec.encode(value.published_at)),
      "unit_dim" =>
        if(is_nil(value.unit_dim), do: nil, else: Inttegro.Codec.encode(value.unit_dim))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductActionRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:product_id]
  defstruct product_id: nil

  @type t :: %__MODULE__{
          product_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      product_id: Map.fetch!(map, "product_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "product_id" => Inttegro.Codec.encode(value.product_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductAttribute do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name, :value]
  defstruct name: nil, value: nil

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      value: Map.fetch!(map, "value")
    }
  end

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

defmodule Inttegro.ProductAttributeInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:name, :value]
  defstruct name: nil, value: nil

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      value: Map.fetch!(map, "value")
    }
  end

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

defmodule Inttegro.ProductDimensions do
  @moduledoc "Typed Inttegro domain value."
  defstruct physical: nil, digital: nil, custom: nil

  @type t :: %__MODULE__{
          physical: Inttegro.ProductDimensionsPhysical.t() | nil,
          digital: Inttegro.ProductDimensionsDigital.t() | nil,
          custom: Inttegro.ProductDimensionsCustom.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      physical:
        if(is_nil(Map.get(map, "physical")),
          do: nil,
          else: Inttegro.ProductDimensionsPhysical.from_map(Map.get(map, "physical"))
        ),
      digital:
        if(is_nil(Map.get(map, "digital")),
          do: nil,
          else: Inttegro.ProductDimensionsDigital.from_map(Map.get(map, "digital"))
        ),
      custom:
        if(is_nil(Map.get(map, "custom")),
          do: nil,
          else: Inttegro.ProductDimensionsCustom.from_map(Map.get(map, "custom"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "physical" =>
        if(is_nil(value.physical), do: nil, else: Inttegro.Codec.encode(value.physical)),
      "digital" => if(is_nil(value.digital), do: nil, else: Inttegro.Codec.encode(value.digital)),
      "custom" => if(is_nil(value.custom), do: nil, else: Inttegro.Codec.encode(value.custom))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsCustom do
  @moduledoc "Typed Inttegro domain value."
  defstruct size_unit: nil, size: nil, details: nil

  @type t :: %__MODULE__{
          size_unit: String.t() | nil,
          size: number() | nil,
          details: %{optional(String.t()) => String.t()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      size_unit: if(is_nil(Map.get(map, "size_unit")), do: nil, else: Map.get(map, "size_unit")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      details:
        if(is_nil(Map.get(map, "details")),
          do: nil,
          else: Map.new(Map.get(map, "details"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "size_unit" =>
        if(is_nil(value.size_unit), do: nil, else: Inttegro.Codec.encode(value.size_unit)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "details" =>
        if(is_nil(value.details),
          do: nil,
          else:
            Map.new(value.details, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsDigital do
  @moduledoc "Typed Inttegro domain value."
  defstruct bytes: nil, size_unit: nil, size: nil

  @type t :: %__MODULE__{
          bytes: number() | nil,
          size_unit: String.t() | nil,
          size: number() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bytes: if(is_nil(Map.get(map, "bytes")), do: nil, else: Map.get(map, "bytes")),
      size_unit: if(is_nil(Map.get(map, "size_unit")), do: nil, else: Map.get(map, "size_unit")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bytes" => if(is_nil(value.bytes), do: nil, else: Inttegro.Codec.encode(value.bytes)),
      "size_unit" =>
        if(is_nil(value.size_unit), do: nil, else: Inttegro.Codec.encode(value.size_unit)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct physical: nil, digital: nil, custom: nil

  @type t :: %__MODULE__{
          physical: Inttegro.ProductDimensionsInputPhysical.t() | nil,
          digital: Inttegro.ProductDimensionsInputDigital.t() | nil,
          custom: Inttegro.ProductDimensionsInputCustom.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      physical:
        if(is_nil(Map.get(map, "physical")),
          do: nil,
          else: Inttegro.ProductDimensionsInputPhysical.from_map(Map.get(map, "physical"))
        ),
      digital:
        if(is_nil(Map.get(map, "digital")),
          do: nil,
          else: Inttegro.ProductDimensionsInputDigital.from_map(Map.get(map, "digital"))
        ),
      custom:
        if(is_nil(Map.get(map, "custom")),
          do: nil,
          else: Inttegro.ProductDimensionsInputCustom.from_map(Map.get(map, "custom"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "physical" =>
        if(is_nil(value.physical), do: nil, else: Inttegro.Codec.encode(value.physical)),
      "digital" => if(is_nil(value.digital), do: nil, else: Inttegro.Codec.encode(value.digital)),
      "custom" => if(is_nil(value.custom), do: nil, else: Inttegro.Codec.encode(value.custom))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsInputCustom do
  @moduledoc "Typed Inttegro request parameters."
  defstruct size_unit: nil, size: nil, details: nil

  @type t :: %__MODULE__{
          size_unit: String.t() | nil,
          size: number() | nil,
          details: %{optional(String.t()) => String.t()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      size_unit: if(is_nil(Map.get(map, "size_unit")), do: nil, else: Map.get(map, "size_unit")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      details:
        if(is_nil(Map.get(map, "details")),
          do: nil,
          else: Map.new(Map.get(map, "details"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "size_unit" =>
        if(is_nil(value.size_unit), do: nil, else: Inttegro.Codec.encode(value.size_unit)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "details" =>
        if(is_nil(value.details),
          do: nil,
          else:
            Map.new(value.details, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsInputDigital do
  @moduledoc "Typed Inttegro request parameters."
  defstruct bytes: nil, size_unit: nil, size: nil

  @type t :: %__MODULE__{
          bytes: number() | nil,
          size_unit: String.t() | nil,
          size: number() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      bytes: if(is_nil(Map.get(map, "bytes")), do: nil, else: Map.get(map, "bytes")),
      size_unit: if(is_nil(Map.get(map, "size_unit")), do: nil, else: Map.get(map, "size_unit")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "bytes" => if(is_nil(value.bytes), do: nil, else: Inttegro.Codec.encode(value.bytes)),
      "size_unit" =>
        if(is_nil(value.size_unit), do: nil, else: Inttegro.Codec.encode(value.size_unit)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsInputPhysical do
  @moduledoc "Typed Inttegro request parameters."
  defstruct weight_unit: nil,
            weight: nil,
            size: nil,
            volume_unit: nil,
            volume: nil,
            length: nil,
            height: nil,
            width: nil

  @type t :: %__MODULE__{
          weight_unit: String.t() | nil,
          weight: number() | nil,
          size: number() | nil,
          volume_unit: String.t() | nil,
          volume: number() | nil,
          length: number() | nil,
          height: number() | nil,
          width: number() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      weight_unit:
        if(is_nil(Map.get(map, "weight_unit")), do: nil, else: Map.get(map, "weight_unit")),
      weight: if(is_nil(Map.get(map, "weight")), do: nil, else: Map.get(map, "weight")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      volume_unit:
        if(is_nil(Map.get(map, "volume_unit")), do: nil, else: Map.get(map, "volume_unit")),
      volume: if(is_nil(Map.get(map, "volume")), do: nil, else: Map.get(map, "volume")),
      length: if(is_nil(Map.get(map, "length")), do: nil, else: Map.get(map, "length")),
      height: if(is_nil(Map.get(map, "height")), do: nil, else: Map.get(map, "height")),
      width: if(is_nil(Map.get(map, "width")), do: nil, else: Map.get(map, "width"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "weight_unit" =>
        if(is_nil(value.weight_unit), do: nil, else: Inttegro.Codec.encode(value.weight_unit)),
      "weight" => if(is_nil(value.weight), do: nil, else: Inttegro.Codec.encode(value.weight)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "volume_unit" =>
        if(is_nil(value.volume_unit), do: nil, else: Inttegro.Codec.encode(value.volume_unit)),
      "volume" => if(is_nil(value.volume), do: nil, else: Inttegro.Codec.encode(value.volume)),
      "length" => if(is_nil(value.length), do: nil, else: Inttegro.Codec.encode(value.length)),
      "height" => if(is_nil(value.height), do: nil, else: Inttegro.Codec.encode(value.height)),
      "width" => if(is_nil(value.width), do: nil, else: Inttegro.Codec.encode(value.width))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductDimensionsPhysical do
  @moduledoc "Typed Inttegro domain value."
  defstruct weight_unit: nil,
            weight: nil,
            size: nil,
            volume_unit: nil,
            volume: nil,
            length: nil,
            height: nil,
            width: nil

  @type t :: %__MODULE__{
          weight_unit: String.t() | nil,
          weight: number() | nil,
          size: number() | nil,
          volume_unit: String.t() | nil,
          volume: number() | nil,
          length: number() | nil,
          height: number() | nil,
          width: number() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      weight_unit:
        if(is_nil(Map.get(map, "weight_unit")), do: nil, else: Map.get(map, "weight_unit")),
      weight: if(is_nil(Map.get(map, "weight")), do: nil, else: Map.get(map, "weight")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      volume_unit:
        if(is_nil(Map.get(map, "volume_unit")), do: nil, else: Map.get(map, "volume_unit")),
      volume: if(is_nil(Map.get(map, "volume")), do: nil, else: Map.get(map, "volume")),
      length: if(is_nil(Map.get(map, "length")), do: nil, else: Map.get(map, "length")),
      height: if(is_nil(Map.get(map, "height")), do: nil, else: Map.get(map, "height")),
      width: if(is_nil(Map.get(map, "width")), do: nil, else: Map.get(map, "width"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "weight_unit" =>
        if(is_nil(value.weight_unit), do: nil, else: Inttegro.Codec.encode(value.weight_unit)),
      "weight" => if(is_nil(value.weight), do: nil, else: Inttegro.Codec.encode(value.weight)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "volume_unit" =>
        if(is_nil(value.volume_unit), do: nil, else: Inttegro.Codec.encode(value.volume_unit)),
      "volume" => if(is_nil(value.volume), do: nil, else: Inttegro.Codec.encode(value.volume)),
      "length" => if(is_nil(value.length), do: nil, else: Inttegro.Codec.encode(value.length)),
      "height" => if(is_nil(value.height), do: nil, else: Inttegro.Codec.encode(value.height)),
      "width" => if(is_nil(value.width), do: nil, else: Inttegro.Codec.encode(value.width))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductLineItemInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :product]
  defstruct type: nil, product: nil

  @type t :: %__MODULE__{
          type: Inttegro.LineItemType.t(),
          product: Inttegro.ProductLineItemInputProduct.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.LineItemType.decode(Map.fetch!(map, "type")),
      product: Inttegro.ProductLineItemInputProduct.decode(Map.fetch!(map, "product"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.LineItemType.encode(value.type),
      "product" => Inttegro.Codec.encode(value.product)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductMedia do
  @moduledoc "Typed Inttegro domain value."
  defstruct hero_image: nil,
            thumbnail: nil,
            web_page_url: nil,
            brand_logo: nil,
            infographic: nil,
            promo_video: nil,
            demo_video: nil,
            gallery: nil,
            downloads: nil

  @type t :: %__MODULE__{
          hero_image: String.t() | nil,
          thumbnail: String.t() | nil,
          web_page_url: String.t() | nil,
          brand_logo: String.t() | nil,
          infographic: String.t() | nil,
          promo_video: String.t() | nil,
          demo_video: String.t() | nil,
          gallery: [String.t()] | nil,
          downloads: [String.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      hero_image:
        if(is_nil(Map.get(map, "hero_image")), do: nil, else: Map.get(map, "hero_image")),
      thumbnail: if(is_nil(Map.get(map, "thumbnail")), do: nil, else: Map.get(map, "thumbnail")),
      web_page_url:
        if(is_nil(Map.get(map, "web_page_url")), do: nil, else: Map.get(map, "web_page_url")),
      brand_logo:
        if(is_nil(Map.get(map, "brand_logo")), do: nil, else: Map.get(map, "brand_logo")),
      infographic:
        if(is_nil(Map.get(map, "infographic")), do: nil, else: Map.get(map, "infographic")),
      promo_video:
        if(is_nil(Map.get(map, "promo_video")), do: nil, else: Map.get(map, "promo_video")),
      demo_video:
        if(is_nil(Map.get(map, "demo_video")), do: nil, else: Map.get(map, "demo_video")),
      gallery:
        if(is_nil(Map.get(map, "gallery")),
          do: nil,
          else: Enum.map(Map.get(map, "gallery"), fn item -> item end)
        ),
      downloads:
        if(is_nil(Map.get(map, "downloads")),
          do: nil,
          else: Enum.map(Map.get(map, "downloads"), fn item -> item end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "hero_image" =>
        if(is_nil(value.hero_image), do: nil, else: Inttegro.Codec.encode(value.hero_image)),
      "thumbnail" =>
        if(is_nil(value.thumbnail), do: nil, else: Inttegro.Codec.encode(value.thumbnail)),
      "web_page_url" =>
        if(is_nil(value.web_page_url), do: nil, else: Inttegro.Codec.encode(value.web_page_url)),
      "brand_logo" =>
        if(is_nil(value.brand_logo), do: nil, else: Inttegro.Codec.encode(value.brand_logo)),
      "infographic" =>
        if(is_nil(value.infographic), do: nil, else: Inttegro.Codec.encode(value.infographic)),
      "promo_video" =>
        if(is_nil(value.promo_video), do: nil, else: Inttegro.Codec.encode(value.promo_video)),
      "demo_video" =>
        if(is_nil(value.demo_video), do: nil, else: Inttegro.Codec.encode(value.demo_video)),
      "gallery" =>
        if(is_nil(value.gallery),
          do: nil,
          else: Enum.map(value.gallery, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "downloads" =>
        if(is_nil(value.downloads),
          do: nil,
          else: Enum.map(value.downloads, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductMediaInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct hero_image: nil,
            thumbnail: nil,
            web_page_url: nil,
            brand_logo: nil,
            infographic: nil,
            promo_video: nil,
            demo_video: nil,
            gallery: nil,
            downloads: nil

  @type t :: %__MODULE__{
          hero_image: String.t() | nil,
          thumbnail: String.t() | nil,
          web_page_url: String.t() | nil,
          brand_logo: String.t() | nil,
          infographic: String.t() | nil,
          promo_video: String.t() | nil,
          demo_video: String.t() | nil,
          gallery: [String.t()] | nil,
          downloads: [String.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      hero_image:
        if(is_nil(Map.get(map, "hero_image")), do: nil, else: Map.get(map, "hero_image")),
      thumbnail: if(is_nil(Map.get(map, "thumbnail")), do: nil, else: Map.get(map, "thumbnail")),
      web_page_url:
        if(is_nil(Map.get(map, "web_page_url")), do: nil, else: Map.get(map, "web_page_url")),
      brand_logo:
        if(is_nil(Map.get(map, "brand_logo")), do: nil, else: Map.get(map, "brand_logo")),
      infographic:
        if(is_nil(Map.get(map, "infographic")), do: nil, else: Map.get(map, "infographic")),
      promo_video:
        if(is_nil(Map.get(map, "promo_video")), do: nil, else: Map.get(map, "promo_video")),
      demo_video:
        if(is_nil(Map.get(map, "demo_video")), do: nil, else: Map.get(map, "demo_video")),
      gallery:
        if(is_nil(Map.get(map, "gallery")),
          do: nil,
          else: Enum.map(Map.get(map, "gallery"), fn item -> item end)
        ),
      downloads:
        if(is_nil(Map.get(map, "downloads")),
          do: nil,
          else: Enum.map(Map.get(map, "downloads"), fn item -> item end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "hero_image" =>
        if(is_nil(value.hero_image), do: nil, else: Inttegro.Codec.encode(value.hero_image)),
      "thumbnail" =>
        if(is_nil(value.thumbnail), do: nil, else: Inttegro.Codec.encode(value.thumbnail)),
      "web_page_url" =>
        if(is_nil(value.web_page_url), do: nil, else: Inttegro.Codec.encode(value.web_page_url)),
      "brand_logo" =>
        if(is_nil(value.brand_logo), do: nil, else: Inttegro.Codec.encode(value.brand_logo)),
      "infographic" =>
        if(is_nil(value.infographic), do: nil, else: Inttegro.Codec.encode(value.infographic)),
      "promo_video" =>
        if(is_nil(value.promo_video), do: nil, else: Inttegro.Codec.encode(value.promo_video)),
      "demo_video" =>
        if(is_nil(value.demo_video), do: nil, else: Inttegro.Codec.encode(value.demo_video)),
      "gallery" =>
        if(is_nil(value.gallery),
          do: nil,
          else: Enum.map(value.gallery, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "downloads" =>
        if(is_nil(value.downloads),
          do: nil,
          else: Enum.map(value.downloads, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductPage do
  @moduledoc "Typed Inttegro domain value."
  defstruct number: nil, size: nil, products: nil

  @type t :: %__MODULE__{
          number: integer() | nil,
          size: integer() | nil,
          products: [Inttegro.Product.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      products:
        if(is_nil(Map.get(map, "products")),
          do: nil,
          else: Enum.map(Map.get(map, "products"), fn item -> Inttegro.Product.from_map(item) end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "size" => if(is_nil(value.size), do: nil, else: Inttegro.Codec.encode(value.size)),
      "products" =>
        if(is_nil(value.products),
          do: nil,
          else: Enum.map(value.products, fn item -> Inttegro.Codec.encode(item) end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductPriceSummary do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :active, :nominal]
  defstruct id: nil, active: nil, label: nil, nominal: nil

  @type t :: %__MODULE__{
          id: String.t(),
          active: boolean(),
          label: String.t() | nil,
          nominal: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      active: Map.fetch!(map, "active"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      nominal: Inttegro.Amount.from_map(Map.fetch!(map, "nominal"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "active" => Inttegro.Codec.encode(value.active),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "nominal" => Inttegro.Codec.encode(value.nominal)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductShipment do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct type: nil, delivery: nil, download: nil, render: nil, service: nil, stream: nil

  @type t :: %__MODULE__{
          type: Inttegro.ProductShipmentType.t(),
          delivery: %{optional(String.t()) => term()} | nil,
          download: %{optional(String.t()) => term()} | nil,
          render: %{optional(String.t()) => term()} | nil,
          service: %{optional(String.t()) => term()} | nil,
          stream: %{optional(String.t()) => term()} | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.ProductShipmentType.decode(Map.fetch!(map, "type")),
      delivery:
        if(is_nil(Map.get(map, "delivery")),
          do: nil,
          else: Map.new(Map.get(map, "delivery"), fn {key, value} -> {key, value} end)
        ),
      download:
        if(is_nil(Map.get(map, "download")),
          do: nil,
          else: Map.new(Map.get(map, "download"), fn {key, value} -> {key, value} end)
        ),
      render:
        if(is_nil(Map.get(map, "render")),
          do: nil,
          else: Map.new(Map.get(map, "render"), fn {key, value} -> {key, value} end)
        ),
      service:
        if(is_nil(Map.get(map, "service")),
          do: nil,
          else: Map.new(Map.get(map, "service"), fn {key, value} -> {key, value} end)
        ),
      stream:
        if(is_nil(Map.get(map, "stream")),
          do: nil,
          else: Map.new(Map.get(map, "stream"), fn {key, value} -> {key, value} end)
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.ProductShipmentType.encode(value.type),
      "delivery" =>
        if(is_nil(value.delivery),
          do: nil,
          else:
            Map.new(value.delivery, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "download" =>
        if(is_nil(value.download),
          do: nil,
          else:
            Map.new(value.download, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "render" =>
        if(is_nil(value.render),
          do: nil,
          else:
            Map.new(value.render, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "service" =>
        if(is_nil(value.service),
          do: nil,
          else:
            Map.new(value.service, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "stream" =>
        if(is_nil(value.stream),
          do: nil,
          else:
            Map.new(value.stream, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ProductShipmentInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type]
  defstruct type: nil

  @type t :: %__MODULE__{
          type: Inttegro.ProductShipmentInputType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.ProductShipmentInputType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.ProductShipmentInputType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PublicFileStorage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:encoding, :stored_size]
  defstruct encoding: nil, stored_size: nil

  @type t :: %__MODULE__{
          encoding: Inttegro.FileStorageEncoding.t(),
          stored_size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      encoding: Inttegro.FileStorageEncoding.decode(Map.fetch!(map, "encoding")),
      stored_size: Map.fetch!(map, "stored_size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "encoding" => Inttegro.FileStorageEncoding.encode(value.encoding),
      "stored_size" => Inttegro.Codec.encode(value.stored_size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.PurchaseIntent do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          activity: Inttegro.PurchaseIntentActivity.t() | nil,
          allow_variants: boolean(),
          created_at: String.t(),
          expires_at: String.t() | nil,
          id: String.t(),
          inactive_at: String.t() | nil,
          merchant: Inttegro.PurchaseIntentMerchant.t() | nil,
          price: Inttegro.PurchaseIntentPrice.t() | nil,
          product: Inttegro.PurchaseIntentProduct.t() | nil,
          quantity: Inttegro.PurchaseIntentQuantity.t(),
          status: Inttegro.PurchaseIntentStatus.t(),
          updated_at: String.t() | nil,
          usage: Inttegro.PurchaseIntentUsage.t(),
          variant_set: Inttegro.PurchaseIntentVariantSet.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      activity:
        if(is_nil(Map.get(map, "activity")),
          do: nil,
          else: Inttegro.PurchaseIntentActivity.from_map(Map.get(map, "activity"))
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
          else: Inttegro.PurchaseIntentMerchant.from_map(Map.get(map, "merchant"))
        ),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else: Inttegro.PurchaseIntentPrice.from_map(Map.get(map, "price"))
        ),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PurchaseIntentProduct.from_map(Map.get(map, "product"))
        ),
      quantity: Inttegro.PurchaseIntentQuantity.from_map(Map.fetch!(map, "quantity")),
      status: Inttegro.PurchaseIntentStatus.decode(Map.fetch!(map, "status")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      usage: Inttegro.PurchaseIntentUsage.from_map(Map.fetch!(map, "usage")),
      variant_set:
        if(is_nil(Map.get(map, "variant_set")),
          do: nil,
          else: Inttegro.PurchaseIntentVariantSet.from_map(Map.get(map, "variant_set"))
        )
    }
  end

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
      "status" => Inttegro.PurchaseIntentStatus.encode(value.status),
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

defmodule Inttegro.PurchaseIntentActivity do
  @moduledoc "Typed Inttegro domain value."
  defstruct recent: nil

  @type t :: %__MODULE__{
          recent: [Inttegro.PurchaseIntentActivity.t()] | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recent:
        if(is_nil(Map.get(map, "recent")),
          do: nil,
          else:
            Enum.map(Map.get(map, "recent"), fn item ->
              Inttegro.PurchaseIntentActivity.from_map(item)
            end)
        )
    }
  end

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

defmodule Inttegro.PurchaseIntentMerchant do
  @moduledoc "Typed Inttegro domain value."
  defstruct app_id: nil, app_name: nil, organization_id: nil, organization_name: nil

  @type t :: %__MODULE__{
          app_id: String.t() | nil,
          app_name: String.t() | nil,
          organization_id: String.t() | nil,
          organization_name: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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

defmodule Inttegro.PurchaseIntentOriginalPrice do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:active, :nominal]
  defstruct active: nil, id: nil, label: nil, nominal: nil

  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t() | nil,
          label: String.t() | nil,
          nominal: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      nominal: Inttegro.Amount.from_map(Map.fetch!(map, "nominal"))
    }
  end

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

defmodule Inttegro.PurchaseIntentPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :purchase_intents, :size]
  defstruct number: nil, purchase_intents: nil, size: nil

  @type t :: %__MODULE__{
          number: integer(),
          purchase_intents: [Inttegro.PurchaseIntent.t()],
          size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      purchase_intents:
        Enum.map(Map.fetch!(map, "purchase_intents"), fn item ->
          Inttegro.PurchaseIntent.from_map(item)
        end),
      size: Map.fetch!(map, "size")
    }
  end

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

defmodule Inttegro.PurchaseIntentPrice do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:active, :nominal]
  defstruct active: nil, id: nil, label: nil, nominal: nil, original: nil

  @type t :: %__MODULE__{
          active: boolean(),
          id: String.t() | nil,
          label: String.t() | nil,
          nominal: Inttegro.Amount.t(),
          original: Inttegro.PurchaseIntentOriginalPrice.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      nominal: Inttegro.Amount.from_map(Map.fetch!(map, "nominal")),
      original:
        if(is_nil(Map.get(map, "original")),
          do: nil,
          else: Inttegro.PurchaseIntentOriginalPrice.from_map(Map.get(map, "original"))
        )
    }
  end

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

defmodule Inttegro.PurchaseIntentProduct do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          id: String.t(),
          about: String.t() | nil,
          active: boolean(),
          archived_at: String.t() | nil,
          attributes: [Inttegro.PurchaseIntentProductAttributesItem.t()] | nil,
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
          type: Inttegro.ProductType.t(),
          unit_dim: String.t() | nil,
          updated_at: String.t() | nil,
          prices: [Inttegro.ProductPriceSummary.t()] | nil,
          variant_set_id: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
              Inttegro.PurchaseIntentProductAttributesItem.from_map(item)
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
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type")),
      unit_dim: if(is_nil(Map.get(map, "unit_dim")), do: nil, else: Map.get(map, "unit_dim")),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      prices:
        if(is_nil(Map.get(map, "prices")),
          do: nil,
          else:
            Enum.map(Map.get(map, "prices"), fn item ->
              Inttegro.ProductPriceSummary.from_map(item)
            end)
        ),
      variant_set_id:
        if(is_nil(Map.get(map, "variant_set_id")), do: nil, else: Map.get(map, "variant_set_id"))
    }
  end

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
      "type" => Inttegro.ProductType.encode(value.type),
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

defmodule Inttegro.PurchaseIntentProductAttributesItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:name, :value]
  defstruct name: nil, value: nil

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: Map.fetch!(map, "name"),
      value: Map.fetch!(map, "value")
    }
  end

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

defmodule Inttegro.PurchaseIntentQuantity do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:min]
  defstruct min: nil, max: nil

  @type t :: %__MODULE__{
          min: integer(),
          max: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      min: Map.fetch!(map, "min"),
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max"))
    }
  end

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

defmodule Inttegro.PurchaseIntentUsage do
  @moduledoc "Typed Inttegro domain value."
  defstruct multi_use: nil, order: nil, single_use: nil

  @type t :: %__MODULE__{
          multi_use: boolean() | nil,
          order: Inttegro.PurchaseIntentUsageOrder.t() | nil,
          single_use: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      multi_use: if(is_nil(Map.get(map, "multi_use")), do: nil, else: Map.get(map, "multi_use")),
      order:
        if(is_nil(Map.get(map, "order")),
          do: nil,
          else: Inttegro.PurchaseIntentUsageOrder.from_map(Map.get(map, "order"))
        ),
      single_use:
        if(is_nil(Map.get(map, "single_use")), do: nil, else: Map.get(map, "single_use"))
    }
  end

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

defmodule Inttegro.PurchaseIntentUsageOrder do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :id]
  defstruct created_at: nil, id: nil

  @type t :: %__MODULE__{
          created_at: String.t(),
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      id: Map.fetch!(map, "id")
    }
  end

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

defmodule Inttegro.PurchaseIntentVariant do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:active, :product_id, :variant_values]
  defstruct active: nil,
            position: nil,
            price: nil,
            product: nil,
            product_id: nil,
            variant_values: nil

  @type t :: %__MODULE__{
          active: boolean(),
          position: integer() | nil,
          price: Inttegro.PurchaseIntentPrice.t() | nil,
          product: Inttegro.PurchaseIntentProduct.t() | nil,
          product_id: String.t(),
          variant_values: %{optional(String.t()) => String.t()}
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      active: Map.fetch!(map, "active"),
      position: if(is_nil(Map.get(map, "position")), do: nil, else: Map.get(map, "position")),
      price:
        if(is_nil(Map.get(map, "price")),
          do: nil,
          else: Inttegro.PurchaseIntentPrice.from_map(Map.get(map, "price"))
        ),
      product:
        if(is_nil(Map.get(map, "product")),
          do: nil,
          else: Inttegro.PurchaseIntentProduct.from_map(Map.get(map, "product"))
        ),
      product_id: Map.fetch!(map, "product_id"),
      variant_values:
        Map.new(Map.fetch!(map, "variant_values"), fn {key, value} -> {key, value} end)
    }
  end

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

defmodule Inttegro.PurchaseIntentVariantAxis do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:key, :label, :position]
  defstruct key: nil, label: nil, position: nil

  @type t :: %__MODULE__{
          key: String.t(),
          label: String.t(),
          position: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      key: Map.fetch!(map, "key"),
      label: Map.fetch!(map, "label"),
      position: Map.fetch!(map, "position")
    }
  end

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

defmodule Inttegro.PurchaseIntentVariantSet do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:active, :id, :name, :variant_axes, :variants]
  defstruct active: nil,
            default_product_id: nil,
            description: nil,
            id: nil,
            name: nil,
            reference: nil,
            variant_axes: nil,
            variants: nil

  @type t :: %__MODULE__{
          active: boolean(),
          default_product_id: String.t() | nil,
          description: String.t() | nil,
          id: String.t(),
          name: String.t(),
          reference: String.t() | nil,
          variant_axes: [Inttegro.PurchaseIntentVariantAxis.t()],
          variants: [Inttegro.PurchaseIntentVariant.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
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
          Inttegro.PurchaseIntentVariantAxis.from_map(item)
        end),
      variants:
        Enum.map(Map.fetch!(map, "variants"), fn item ->
          Inttegro.PurchaseIntentVariant.from_map(item)
        end)
    }
  end

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

defmodule Inttegro.Refund do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :id, :line_items, :order_id, :reason, :status, :total]
  defstruct canceled_at: nil,
            created_at: nil,
            custom_data: nil,
            failed_at: nil,
            id: nil,
            line_items: nil,
            order_id: nil,
            processing_at: nil,
            reason: nil,
            reason_details: nil,
            reference: nil,
            status: nil,
            succeeded_at: nil,
            total: nil

  @type t :: %__MODULE__{
          canceled_at: String.t() | nil,
          created_at: String.t(),
          custom_data: %{optional(String.t()) => String.t()} | nil,
          failed_at: String.t() | nil,
          id: String.t(),
          line_items: [Inttegro.RefundLineItem.t()],
          order_id: String.t(),
          processing_at: String.t() | nil,
          reason: Inttegro.RefundReason.t(),
          reason_details: String.t() | nil,
          reference: String.t() | nil,
          status: Inttegro.RefundStatus.t(),
          succeeded_at: String.t() | nil,
          total: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      created_at: Map.fetch!(map, "created_at"),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      failed_at: if(is_nil(Map.get(map, "failed_at")), do: nil, else: Map.get(map, "failed_at")),
      id: Map.fetch!(map, "id"),
      line_items:
        Enum.map(Map.fetch!(map, "line_items"), fn item ->
          Inttegro.RefundLineItem.from_map(item)
        end),
      order_id: Map.fetch!(map, "order_id"),
      processing_at:
        if(is_nil(Map.get(map, "processing_at")), do: nil, else: Map.get(map, "processing_at")),
      reason: Inttegro.RefundReason.decode(Map.fetch!(map, "reason")),
      reason_details:
        if(is_nil(Map.get(map, "reason_details")), do: nil, else: Map.get(map, "reason_details")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      status: Inttegro.RefundStatus.decode(Map.fetch!(map, "status")),
      succeeded_at:
        if(is_nil(Map.get(map, "succeeded_at")), do: nil, else: Map.get(map, "succeeded_at")),
      total: Inttegro.Amount.from_map(Map.fetch!(map, "total"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "failed_at" =>
        if(is_nil(value.failed_at), do: nil, else: Inttegro.Codec.encode(value.failed_at)),
      "id" => Inttegro.Codec.encode(value.id),
      "line_items" => Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end),
      "order_id" => Inttegro.Codec.encode(value.order_id),
      "processing_at" =>
        if(is_nil(value.processing_at), do: nil, else: Inttegro.Codec.encode(value.processing_at)),
      "reason" => Inttegro.RefundReason.encode(value.reason),
      "reason_details" =>
        if(is_nil(value.reason_details),
          do: nil,
          else: Inttegro.Codec.encode(value.reason_details)
        ),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "status" => Inttegro.RefundStatus.encode(value.status),
      "succeeded_at" =>
        if(is_nil(value.succeeded_at), do: nil, else: Inttegro.Codec.encode(value.succeeded_at)),
      "total" => Inttegro.Codec.encode(value.total)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RefundLineItem do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :order_line_item_id, :original_amount_paid, :refund_amount]
  defstruct id: nil,
            order_line_item_id: nil,
            original_amount_paid: nil,
            reason: nil,
            reason_details: nil,
            refund_amount: nil

  @type t :: %__MODULE__{
          id: String.t(),
          order_line_item_id: String.t(),
          original_amount_paid: Inttegro.Amount.t(),
          reason: Inttegro.RefundReason.t() | nil,
          reason_details: String.t() | nil,
          refund_amount: Inttegro.Amount.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      order_line_item_id: Map.fetch!(map, "order_line_item_id"),
      original_amount_paid: Inttegro.Amount.from_map(Map.fetch!(map, "original_amount_paid")),
      reason:
        if(is_nil(Map.get(map, "reason")),
          do: nil,
          else: Inttegro.RefundReason.decode(Map.get(map, "reason"))
        ),
      reason_details:
        if(is_nil(Map.get(map, "reason_details")), do: nil, else: Map.get(map, "reason_details")),
      refund_amount: Inttegro.Amount.from_map(Map.fetch!(map, "refund_amount"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "order_line_item_id" => Inttegro.Codec.encode(value.order_line_item_id),
      "original_amount_paid" => Inttegro.Codec.encode(value.original_amount_paid),
      "reason" =>
        if(is_nil(value.reason), do: nil, else: Inttegro.RefundReason.encode(value.reason)),
      "reason_details" =>
        if(is_nil(value.reason_details),
          do: nil,
          else: Inttegro.Codec.encode(value.reason_details)
        ),
      "refund_amount" => Inttegro.Codec.encode(value.refund_amount)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RefundPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :refunds, :size]
  defstruct number: nil, refunds: nil, size: nil

  @type t :: %__MODULE__{
          number: integer(),
          refunds: [Inttegro.Refund.t()],
          size: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      refunds:
        Enum.map(Map.fetch!(map, "refunds"), fn item -> Inttegro.Refund.from_map(item) end),
      size: Map.fetch!(map, "size")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "refunds" => Enum.map(value.refunds, fn item -> Inttegro.Codec.encode(item) end),
      "size" => Inttegro.Codec.encode(value.size)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RefundRequestMetaInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RenderMessageTemplatePreviewRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:message_template]
  defstruct message_template: nil

  @type t :: %__MODULE__{
          message_template: Inttegro.MessageTemplateReferenceInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      message_template:
        Inttegro.MessageTemplateReferenceInput.from_map(Map.fetch!(map, "message_template"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "message_template" => Inttegro.Codec.encode(value.message_template)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RenderedEmailMessageTemplate do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:subject, :text]
  defstruct subject: nil,
            text: nil,
            html: nil,
            from_: nil,
            reply_to: nil,
            headers: nil,
            safety: nil

  @type t :: %__MODULE__{
          subject: String.t(),
          text: String.t(),
          html: String.t() | nil,
          from_: Inttegro.MessageTemplateMailbox.t() | nil,
          reply_to: Inttegro.MessageTemplateMailbox.t() | nil,
          headers: %{optional(String.t()) => String.t()} | nil,
          safety: Inttegro.MessageTemplateSafetyResult.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      subject: Map.fetch!(map, "subject"),
      text: Map.fetch!(map, "text"),
      html: if(is_nil(Map.get(map, "html")), do: nil, else: Map.get(map, "html")),
      from_:
        if(is_nil(Map.get(map, "from")),
          do: nil,
          else: Inttegro.MessageTemplateMailbox.from_map(Map.get(map, "from"))
        ),
      reply_to:
        if(is_nil(Map.get(map, "reply_to")),
          do: nil,
          else: Inttegro.MessageTemplateMailbox.from_map(Map.get(map, "reply_to"))
        ),
      headers:
        if(is_nil(Map.get(map, "headers")),
          do: nil,
          else: Map.new(Map.get(map, "headers"), fn {key, value} -> {key, value} end)
        ),
      safety:
        if(is_nil(Map.get(map, "safety")),
          do: nil,
          else: Inttegro.MessageTemplateSafetyResult.from_map(Map.get(map, "safety"))
        )
    }
  end

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

defmodule Inttegro.RenderedMessageTemplate do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:channel]
  defstruct channel: nil, attachments: nil, sms: nil, email: nil

  @type t :: %__MODULE__{
          channel: Inttegro.MessageTemplateChannel.t(),
          attachments: [String.t()] | nil,
          sms: Inttegro.RenderedSMSMessageTemplate.t() | nil,
          email: Inttegro.RenderedEmailMessageTemplate.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      channel: Inttegro.MessageTemplateChannel.decode(Map.fetch!(map, "channel")),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.RenderedSMSMessageTemplate.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.RenderedEmailMessageTemplate.from_map(Map.get(map, "email"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "channel" => Inttegro.MessageTemplateChannel.encode(value.channel),
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

defmodule Inttegro.RenderedSMSMessageTemplate do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:full_message]
  defstruct full_message: nil

  @type t :: %__MODULE__{
          full_message: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      full_message: Map.fetch!(map, "full_message")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "full_message" => Inttegro.Codec.encode(value.full_message)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RequestConfirmationRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct order_id: nil

  @type t :: %__MODULE__{
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ResourceSupply do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:by, :supplied_at]
  defstruct attempt_id: nil,
            by: nil,
            channel: nil,
            resource_id: nil,
            resource_type: nil,
            supplied_at: nil

  @type t :: %__MODULE__{
          attempt_id: String.t() | nil,
          by: String.t(),
          channel: String.t() | nil,
          resource_id: String.t() | nil,
          resource_type: String.t() | nil,
          supplied_at: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      attempt_id:
        if(is_nil(Map.get(map, "attempt_id")), do: nil, else: Map.get(map, "attempt_id")),
      by: Map.fetch!(map, "by"),
      channel: if(is_nil(Map.get(map, "channel")), do: nil, else: Map.get(map, "channel")),
      resource_id:
        if(is_nil(Map.get(map, "resource_id")), do: nil, else: Map.get(map, "resource_id")),
      resource_type:
        if(is_nil(Map.get(map, "resource_type")), do: nil, else: Map.get(map, "resource_type")),
      supplied_at: Map.fetch!(map, "supplied_at")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "attempt_id" =>
        if(is_nil(value.attempt_id), do: nil, else: Inttegro.Codec.encode(value.attempt_id)),
      "by" => Inttegro.Codec.encode(value.by),
      "channel" => if(is_nil(value.channel), do: nil, else: Inttegro.Codec.encode(value.channel)),
      "resource_id" =>
        if(is_nil(value.resource_id), do: nil, else: Inttegro.Codec.encode(value.resource_id)),
      "resource_type" =>
        if(is_nil(value.resource_type), do: nil, else: Inttegro.Codec.encode(value.resource_type)),
      "supplied_at" => Inttegro.Codec.encode(value.supplied_at)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ReviewUploadRequestAttemptByIDRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:attempt_id, :decision, :id]
  defstruct public_message: nil, reasons: nil, attempt_id: nil, decision: nil, id: nil

  @type t :: %__MODULE__{
          public_message: String.t() | nil,
          reasons: [Inttegro.UploadRequestReviewReasonInput.t()] | nil,
          attempt_id: String.t(),
          decision: Inttegro.UploadReviewDecision.t(),
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      public_message:
        if(is_nil(Map.get(map, "public_message")), do: nil, else: Map.get(map, "public_message")),
      reasons:
        if(is_nil(Map.get(map, "reasons")),
          do: nil,
          else:
            Enum.map(Map.get(map, "reasons"), fn item ->
              Inttegro.UploadRequestReviewReasonInput.from_map(item)
            end)
        ),
      attempt_id: Map.fetch!(map, "attempt_id"),
      decision: Inttegro.UploadReviewDecision.decode(Map.fetch!(map, "decision")),
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "public_message" =>
        if(is_nil(value.public_message),
          do: nil,
          else: Inttegro.Codec.encode(value.public_message)
        ),
      "reasons" =>
        if(is_nil(value.reasons),
          do: nil,
          else: Enum.map(value.reasons, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "attempt_id" => Inttegro.Codec.encode(value.attempt_id),
      "decision" => Inttegro.UploadReviewDecision.encode(value.decision),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ReviewUploadRequestAttemptByOrdinalRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:attempt_ordinal, :decision, :id]
  defstruct public_message: nil, reasons: nil, attempt_ordinal: nil, decision: nil, id: nil

  @type t :: %__MODULE__{
          public_message: String.t() | nil,
          reasons: [Inttegro.UploadRequestReviewReasonInput.t()] | nil,
          attempt_ordinal: integer(),
          decision: Inttegro.UploadReviewDecision.t(),
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      public_message:
        if(is_nil(Map.get(map, "public_message")), do: nil, else: Map.get(map, "public_message")),
      reasons:
        if(is_nil(Map.get(map, "reasons")),
          do: nil,
          else:
            Enum.map(Map.get(map, "reasons"), fn item ->
              Inttegro.UploadRequestReviewReasonInput.from_map(item)
            end)
        ),
      attempt_ordinal: Map.fetch!(map, "attempt_ordinal"),
      decision: Inttegro.UploadReviewDecision.decode(Map.fetch!(map, "decision")),
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "public_message" =>
        if(is_nil(value.public_message),
          do: nil,
          else: Inttegro.Codec.encode(value.public_message)
        ),
      "reasons" =>
        if(is_nil(value.reasons),
          do: nil,
          else: Enum.map(value.reasons, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "attempt_ordinal" => Inttegro.Codec.encode(value.attempt_ordinal),
      "decision" => Inttegro.UploadReviewDecision.encode(value.decision),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.RevokeFileLinkRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:id]
  defstruct revoked_by: nil, id: nil

  @type t :: %__MODULE__{
          revoked_by: Inttegro.FileActorInput.t() | nil,
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      revoked_by:
        if(is_nil(Map.get(map, "revoked_by")),
          do: nil,
          else: Inttegro.FileActorInput.from_map(Map.get(map, "revoked_by"))
        ),
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "revoked_by" =>
        if(is_nil(value.revoked_by), do: nil, else: Inttegro.Codec.encode(value.revoked_by)),
      "id" => Inttegro.Codec.encode(value.id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ScheduleCancelDetail do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          errors: [Inttegro.ScheduleError.t()] | nil,
          executed_at: String.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: String.t(),
          sender_id: String.t(),
          canceled_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item -> Inttegro.ScheduleError.from_map(item) end)
        ),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id"),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at"))
    }
  end

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

defmodule Inttegro.ScheduleChimeRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:recipients, :send_after]
  defstruct request_meta: nil,
            full_message: nil,
            email: nil,
            message_template: nil,
            sender_id: nil,
            purpose: nil,
            recipients: nil,
            send_after: nil

  @type t :: %__MODULE__{
          request_meta: Inttegro.ScheduleChimeRequestRequestMeta.t() | nil,
          full_message: String.t() | nil,
          email: Inttegro.ChimeEmailMessageInput.t() | nil,
          message_template: Inttegro.MessageTemplateReferenceInput.t() | nil,
          sender_id: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [term()],
          send_after: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else: Inttegro.ScheduleChimeRequestRequestMeta.from_map(Map.get(map, "request_meta"))
        ),
      full_message:
        if(is_nil(Map.get(map, "full_message")), do: nil, else: Map.get(map, "full_message")),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessageInput.from_map(Map.get(map, "email"))
        ),
      message_template:
        if(is_nil(Map.get(map, "message_template")),
          do: nil,
          else: Inttegro.MessageTemplateReferenceInput.from_map(Map.get(map, "message_template"))
        ),
      sender_id: if(is_nil(Map.get(map, "sender_id")), do: nil, else: Map.get(map, "sender_id")),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "full_message" =>
        if(is_nil(value.full_message), do: nil, else: Inttegro.Codec.encode(value.full_message)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "message_template" =>
        if(is_nil(value.message_template),
          do: nil,
          else: Inttegro.Codec.encode(value.message_template)
        ),
      "sender_id" =>
        if(is_nil(value.sender_id), do: nil, else: Inttegro.Codec.encode(value.sender_id)),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "recipients" => Enum.map(value.recipients, fn item -> Inttegro.Codec.encode(item) end),
      "send_after" => Inttegro.Codec.encode(value.send_after)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ScheduleChimeRequestRequestMeta do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ScheduleCreationDetail do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :full_message, :id, :send_after, :sender_id]
  defstruct created_at: nil,
            customer_ids: nil,
            email: nil,
            executed_at: nil,
            full_message: nil,
            id: nil,
            idempotency_key: nil,
            purpose: nil,
            recipients: nil,
            send_after: nil,
            sender_id: nil

  @type t :: %__MODULE__{
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          executed_at: String.t() | nil,
          full_message: String.t(),
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()] | nil,
          send_after: String.t(),
          sender_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      full_message: Map.fetch!(map, "full_message"),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients:
        if(is_nil(Map.get(map, "recipients")),
          do: nil,
          else: Enum.map(Map.get(map, "recipients"), fn item -> item end)
        ),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "customer_ids" =>
        if(is_nil(value.customer_ids),
          do: nil,
          else: Enum.map(value.customer_ids, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "executed_at" =>
        if(is_nil(value.executed_at), do: nil, else: Inttegro.Codec.encode(value.executed_at)),
      "full_message" => Inttegro.Codec.encode(value.full_message),
      "id" => Inttegro.Codec.encode(value.id),
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        ),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "recipients" =>
        if(is_nil(value.recipients),
          do: nil,
          else: Enum.map(value.recipients, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "send_after" => Inttegro.Codec.encode(value.send_after),
      "sender_id" => Inttegro.Codec.encode(value.sender_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ScheduleDetail do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          chime_ids: [String.t()] | nil,
          content: String.t(),
          created_at: String.t(),
          customer_ids: [String.t()] | nil,
          email: Inttegro.ChimeEmailMessage.t() | nil,
          errors: [Inttegro.ScheduleError.t()] | nil,
          executed_at: String.t() | nil,
          id: String.t(),
          idempotency_key: String.t() | nil,
          purpose: String.t() | nil,
          recipients: [String.t()],
          send_after: String.t(),
          sender_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      chime_ids:
        if(is_nil(Map.get(map, "chime_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "chime_ids"), fn item -> item end)
        ),
      content: Map.fetch!(map, "content"),
      created_at: Map.fetch!(map, "created_at"),
      customer_ids:
        if(is_nil(Map.get(map, "customer_ids")),
          do: nil,
          else: Enum.map(Map.get(map, "customer_ids"), fn item -> item end)
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessage.from_map(Map.get(map, "email"))
        ),
      errors:
        if(is_nil(Map.get(map, "errors")),
          do: nil,
          else:
            Enum.map(Map.get(map, "errors"), fn item -> Inttegro.ScheduleError.from_map(item) end)
        ),
      executed_at:
        if(is_nil(Map.get(map, "executed_at")), do: nil, else: Map.get(map, "executed_at")),
      id: Map.fetch!(map, "id"),
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      recipients: Enum.map(Map.fetch!(map, "recipients"), fn item -> item end),
      send_after: Map.fetch!(map, "send_after"),
      sender_id: Map.fetch!(map, "sender_id")
    }
  end

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

defmodule Inttegro.ScheduleError do
  @moduledoc "Typed Inttegro domain value."
  defstruct recipient: nil, fix_code: nil, type: nil

  @type t :: %__MODULE__{
          recipient: String.t() | nil,
          fix_code: String.t() | nil,
          type: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      recipient: if(is_nil(Map.get(map, "recipient")), do: nil, else: Map.get(map, "recipient")),
      fix_code: if(is_nil(Map.get(map, "fix_code")), do: nil, else: Map.get(map, "fix_code")),
      type: if(is_nil(Map.get(map, "type")), do: nil, else: Map.get(map, "type"))
    }
  end

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

defmodule Inttegro.SchedulePayoutRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:destination_id, :reference]
  defstruct execute_after: nil, max_amount: nil, destination_id: nil, reference: nil

  @type t :: %__MODULE__{
          execute_after: String.t() | nil,
          max_amount: integer() | nil,
          destination_id: String.t(),
          reference: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      execute_after:
        if(is_nil(Map.get(map, "execute_after")), do: nil, else: Map.get(map, "execute_after")),
      max_amount:
        if(is_nil(Map.get(map, "max_amount")), do: nil, else: Map.get(map, "max_amount")),
      destination_id: Map.fetch!(map, "destination_id"),
      reference: Map.fetch!(map, "reference")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "execute_after" =>
        if(is_nil(value.execute_after), do: nil, else: Inttegro.Codec.encode(value.execute_after)),
      "max_amount" =>
        if(is_nil(value.max_amount), do: nil, else: Inttegro.Codec.encode(value.max_amount)),
      "destination_id" => Inttegro.Codec.encode(value.destination_id),
      "reference" => Inttegro.Codec.encode(value.reference)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.SecretKey do
  @moduledoc "Typed Inttegro domain value."
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

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t() | nil,
          token_type: Inttegro.SecretKeyTokenType.t(),
          issued_at: String.t(),
          updated_at: String.t() | nil,
          expires_at: String.t() | nil,
          status: Inttegro.SecretKeyStatus.t(),
          active: boolean(),
          revoked_at: String.t() | nil,
          last_used_at: String.t() | nil,
          usage_count: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      token_type: Inttegro.SecretKeyTokenType.decode(Map.fetch!(map, "token_type")),
      issued_at: Map.fetch!(map, "issued_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at")),
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      status: Inttegro.SecretKeyStatus.decode(Map.fetch!(map, "status")),
      active: Map.fetch!(map, "active"),
      revoked_at:
        if(is_nil(Map.get(map, "revoked_at")), do: nil, else: Map.get(map, "revoked_at")),
      last_used_at:
        if(is_nil(Map.get(map, "last_used_at")), do: nil, else: Map.get(map, "last_used_at")),
      usage_count:
        if(is_nil(Map.get(map, "usage_count")), do: nil, else: Map.get(map, "usage_count"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "token_type" => Inttegro.SecretKeyTokenType.encode(value.token_type),
      "issued_at" => Inttegro.Codec.encode(value.issued_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at)),
      "expires_at" =>
        if(is_nil(value.expires_at), do: nil, else: Inttegro.Codec.encode(value.expires_at)),
      "status" => Inttegro.SecretKeyStatus.encode(value.status),
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

defmodule Inttegro.SecretKeyPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :count, :total, :has_more, :keys]
  defstruct number: nil, size: nil, count: nil, total: nil, has_more: nil, keys: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          count: integer(),
          total: integer(),
          has_more: boolean(),
          keys: [Inttegro.SecretKey.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      count: Map.fetch!(map, "count"),
      total: Map.fetch!(map, "total"),
      has_more: Map.fetch!(map, "has_more"),
      keys: Enum.map(Map.fetch!(map, "keys"), fn item -> Inttegro.SecretKey.from_map(item) end)
    }
  end

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

defmodule Inttegro.SecretKeyUsage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:key, :usage]
  defstruct key: nil, usage: nil

  @type t :: %__MODULE__{
          key: Inttegro.SecretKey.t(),
          usage: Inttegro.SecretKeyUsagePage.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      key: Inttegro.SecretKey.from_map(Map.fetch!(map, "key")),
      usage: Inttegro.SecretKeyUsagePage.from_map(Map.fetch!(map, "usage"))
    }
  end

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

defmodule Inttegro.SecretKeyUsagePage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :count, :total, :has_more, :rows]
  defstruct number: nil, size: nil, count: nil, total: nil, has_more: nil, rows: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          count: integer(),
          total: integer(),
          has_more: boolean(),
          rows: [Inttegro.SecretKeyUsageRow.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      count: Map.fetch!(map, "count"),
      total: Map.fetch!(map, "total"),
      has_more: Map.fetch!(map, "has_more"),
      rows:
        Enum.map(Map.fetch!(map, "rows"), fn item -> Inttegro.SecretKeyUsageRow.from_map(item) end)
    }
  end

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

defmodule Inttegro.SecretKeyUsageRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:secret_key_id]
  defstruct number: nil, page: nil, size: nil, secret_key_id: nil

  @type t :: %__MODULE__{
          number: integer() | nil,
          page: integer() | nil,
          size: integer() | nil,
          secret_key_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      page: if(is_nil(Map.get(map, "page")), do: nil, else: Map.get(map, "page")),
      size: if(is_nil(Map.get(map, "size")), do: nil, else: Map.get(map, "size")),
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

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

defmodule Inttegro.SecretKeyUsageRow do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:secret_key_id, :occurred_at, :auth_result]
  defstruct secret_key_id: nil, occurred_at: nil, auth_result: nil

  @type t :: %__MODULE__{
          secret_key_id: String.t(),
          occurred_at: String.t(),
          auth_result: Inttegro.SecretKeyAuthResult.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      secret_key_id: Map.fetch!(map, "secret_key_id"),
      occurred_at: Map.fetch!(map, "occurred_at"),
      auth_result: Inttegro.SecretKeyAuthResult.decode(Map.fetch!(map, "auth_result"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "secret_key_id" => Inttegro.Codec.encode(value.secret_key_id),
      "occurred_at" => Inttegro.Codec.encode(value.occurred_at),
      "auth_result" => Inttegro.SecretKeyAuthResult.encode(value.auth_result)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.SendChimeRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:recipient]
  defstruct full_message: nil,
            email: nil,
            message_template: nil,
            sender_id: nil,
            purpose: nil,
            custom_data: nil,
            request_meta: nil,
            recipient: nil

  @type t :: %__MODULE__{
          full_message: String.t() | nil,
          email: Inttegro.ChimeEmailMessageInput.t() | nil,
          message_template: Inttegro.MessageTemplateReferenceInput.t() | nil,
          sender_id: String.t() | nil,
          purpose: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          request_meta: Inttegro.SendChimeRequestRequestMeta.t() | nil,
          recipient: Inttegro.SendChimeRequestRecipient.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      full_message:
        if(is_nil(Map.get(map, "full_message")), do: nil, else: Map.get(map, "full_message")),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.ChimeEmailMessageInput.from_map(Map.get(map, "email"))
        ),
      message_template:
        if(is_nil(Map.get(map, "message_template")),
          do: nil,
          else: Inttegro.MessageTemplateReferenceInput.from_map(Map.get(map, "message_template"))
        ),
      sender_id: if(is_nil(Map.get(map, "sender_id")), do: nil, else: Map.get(map, "sender_id")),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      request_meta:
        if(is_nil(Map.get(map, "request_meta")),
          do: nil,
          else: Inttegro.SendChimeRequestRequestMeta.from_map(Map.get(map, "request_meta"))
        ),
      recipient: Inttegro.SendChimeRequestRecipient.decode(Map.fetch!(map, "recipient"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "full_message" =>
        if(is_nil(value.full_message), do: nil, else: Inttegro.Codec.encode(value.full_message)),
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "message_template" =>
        if(is_nil(value.message_template),
          do: nil,
          else: Inttegro.Codec.encode(value.message_template)
        ),
      "sender_id" =>
        if(is_nil(value.sender_id), do: nil, else: Inttegro.Codec.encode(value.sender_id)),
      "purpose" => if(is_nil(value.purpose), do: nil, else: Inttegro.Codec.encode(value.purpose)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "request_meta" =>
        if(is_nil(value.request_meta), do: nil, else: Inttegro.Codec.encode(value.request_meta)),
      "recipient" => Inttegro.Codec.encode(value.recipient)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.SendChimeRequestRequestMeta do
  @moduledoc "Typed Inttegro request parameters."
  defstruct idempotency_key: nil

  @type t :: %__MODULE__{
          idempotency_key: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      idempotency_key:
        if(is_nil(Map.get(map, "idempotency_key")),
          do: nil,
          else: Map.get(map, "idempotency_key")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "idempotency_key" =>
        if(is_nil(value.idempotency_key),
          do: nil,
          else: Inttegro.Codec.encode(value.idempotency_key)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.SetPayoutDestinationsRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:destinations]
  defstruct destinations: nil

  @type t :: %__MODULE__{
          destinations: %{optional(String.t()) => String.t()}
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      destinations: Map.new(Map.fetch!(map, "destinations"), fn {key, value} -> {key, value} end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "destinations" =>
        Map.new(value.destinations, fn {key, value} ->
          {to_string(key), Inttegro.Codec.encode(value)}
        end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ShippingDetailsInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:fee]
  defstruct id: nil, tax_code: nil, custom_data: nil, fee: nil

  @type t :: %__MODULE__{
          id: String.t() | nil,
          tax_code: String.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          fee: Inttegro.AmountParams.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      fee: Inttegro.AmountParams.from_map(Map.fetch!(map, "fee"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "fee" => Inttegro.Codec.encode(value.fee)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ShippingInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:address]
  defstruct address: nil

  @type t :: %__MODULE__{
          address: Inttegro.AddressInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      address: Inttegro.AddressInput.from_map(Map.fetch!(map, "address"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "address" => Inttegro.Codec.encode(value.address)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.ShippingLineItemInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type, :shipping]
  defstruct type: nil, shipping: nil

  @type t :: %__MODULE__{
          type: Inttegro.LineItemType.t(),
          shipping: Inttegro.ShippingDetailsInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type: Inttegro.LineItemType.decode(Map.fetch!(map, "type")),
      shipping: Inttegro.ShippingDetailsInput.from_map(Map.fetch!(map, "shipping"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => Inttegro.LineItemType.encode(value.type),
      "shipping" => Inttegro.Codec.encode(value.shipping)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.TokenizeMobileMoneyPaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_id, :type, :mobile_money, :owner]
  defstruct custom_data: nil, customer_id: nil, type: nil, mobile_money: nil, owner: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => String.t()} | nil,
          customer_id: String.t(),
          type: Inttegro.PaymentMethodType.t(),
          mobile_money: Inttegro.TokenizeMobileMoneyPaymentMethodRequestMobileMoney.t(),
          owner: Inttegro.PaymentMethodOwnerInput.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      customer_id: Map.fetch!(map, "customer_id"),
      type: Inttegro.PaymentMethodType.decode(Map.fetch!(map, "type")),
      mobile_money:
        Inttegro.TokenizeMobileMoneyPaymentMethodRequestMobileMoney.from_map(
          Map.fetch!(map, "mobile_money")
        ),
      owner: Inttegro.PaymentMethodOwnerInput.from_map(Map.fetch!(map, "owner"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "customer_id" => Inttegro.Codec.encode(value.customer_id),
      "type" => Inttegro.PaymentMethodType.encode(value.type),
      "mobile_money" => Inttegro.Codec.encode(value.mobile_money),
      "owner" => Inttegro.Codec.encode(value.owner)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.TokenizeMobileMoneyPaymentMethodRequestMobileMoney do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:account_number, :network]
  defstruct account_number: nil, network: nil

  @type t :: %__MODULE__{
          account_number: String.t(),
          network: Inttegro.MobileMoneyNetwork.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      account_number: Map.fetch!(map, "account_number"),
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "account_number" => Inttegro.Codec.encode(value.account_number),
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UnarchivePaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct payment_method_id: nil

  @type t :: %__MODULE__{
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateApplicationRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct name: nil, alias: nil, description: nil, legal_entity_type: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          alias: String.t() | nil,
          description: String.t() | nil,
          legal_entity_type: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      alias: if(is_nil(Map.get(map, "alias")), do: nil, else: Map.get(map, "alias")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      legal_entity_type:
        if(is_nil(Map.get(map, "legal_entity_type")),
          do: nil,
          else: Map.get(map, "legal_entity_type")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "alias" => if(is_nil(value.alias), do: nil, else: Inttegro.Codec.encode(value.alias)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "legal_entity_type" =>
        if(is_nil(value.legal_entity_type),
          do: nil,
          else: Inttegro.Codec.encode(value.legal_entity_type)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateCustomerRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:customer_id]
  defstruct billing_address: nil,
            custom_data: nil,
            email_address: nil,
            name: nil,
            phone_number: nil,
            reference: nil,
            shipping_address: nil,
            suffix: nil,
            title: nil,
            customer_id: nil

  @type t :: %__MODULE__{
          billing_address: Inttegro.CustomerAddressInput.t() | nil,
          custom_data: %{optional(String.t()) => term()} | nil,
          email_address: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          reference: String.t() | nil,
          shipping_address: Inttegro.CustomerAddressInput.t() | nil,
          suffix: String.t() | nil,
          title: String.t() | nil,
          customer_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      billing_address:
        if(is_nil(Map.get(map, "billing_address")),
          do: nil,
          else: Inttegro.CustomerAddressInput.from_map(Map.get(map, "billing_address"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      email_address:
        if(is_nil(Map.get(map, "email_address")), do: nil, else: Map.get(map, "email_address")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      shipping_address:
        if(is_nil(Map.get(map, "shipping_address")),
          do: nil,
          else: Inttegro.CustomerAddressInput.from_map(Map.get(map, "shipping_address"))
        ),
      suffix: if(is_nil(Map.get(map, "suffix")), do: nil, else: Map.get(map, "suffix")),
      title: if(is_nil(Map.get(map, "title")), do: nil, else: Map.get(map, "title")),
      customer_id: Map.fetch!(map, "customer_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "billing_address" =>
        if(is_nil(value.billing_address),
          do: nil,
          else: Inttegro.Codec.encode(value.billing_address)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "email_address" =>
        if(is_nil(value.email_address), do: nil, else: Inttegro.Codec.encode(value.email_address)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "shipping_address" =>
        if(is_nil(value.shipping_address),
          do: nil,
          else: Inttegro.Codec.encode(value.shipping_address)
        ),
      "suffix" => if(is_nil(value.suffix), do: nil, else: Inttegro.Codec.encode(value.suffix)),
      "title" => if(is_nil(value.title), do: nil, else: Inttegro.Codec.encode(value.title)),
      "customer_id" => Inttegro.Codec.encode(value.customer_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateMessageTemplateRequest do
  @moduledoc "Typed Inttegro request parameters."
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

  @type t :: %__MODULE__{
          name: String.t() | nil,
          about: String.t() | nil,
          channel: Inttegro.MessageTemplateChannel.t() | nil,
          purpose: String.t() | nil,
          locale: String.t() | nil,
          variables: [Inttegro.MessageTemplateVariableInput.t()] | nil,
          sms: Inttegro.MessageTemplateSMSContentInput.t() | nil,
          email: Inttegro.MessageTemplateEmailContentInput.t() | nil,
          attachments: [String.t()] | nil,
          id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      channel:
        if(is_nil(Map.get(map, "channel")),
          do: nil,
          else: Inttegro.MessageTemplateChannel.decode(Map.get(map, "channel"))
        ),
      purpose: if(is_nil(Map.get(map, "purpose")), do: nil, else: Map.get(map, "purpose")),
      locale: if(is_nil(Map.get(map, "locale")), do: nil, else: Map.get(map, "locale")),
      variables:
        if(is_nil(Map.get(map, "variables")),
          do: nil,
          else:
            Enum.map(Map.get(map, "variables"), fn item ->
              Inttegro.MessageTemplateVariableInput.from_map(item)
            end)
        ),
      sms:
        if(is_nil(Map.get(map, "sms")),
          do: nil,
          else: Inttegro.MessageTemplateSMSContentInput.from_map(Map.get(map, "sms"))
        ),
      email:
        if(is_nil(Map.get(map, "email")),
          do: nil,
          else: Inttegro.MessageTemplateEmailContentInput.from_map(Map.get(map, "email"))
        ),
      attachments:
        if(is_nil(Map.get(map, "attachments")),
          do: nil,
          else: Enum.map(Map.get(map, "attachments"), fn item -> item end)
        ),
      id: Map.fetch!(map, "id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "channel" =>
        if(is_nil(value.channel),
          do: nil,
          else: Inttegro.MessageTemplateChannel.encode(value.channel)
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

defmodule Inttegro.UpdateOrderRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:order_id]
  defstruct clear_payment_method: nil,
            custom_data: nil,
            invoice_settings: nil,
            finalize: nil,
            line_items: nil,
            number: nil,
            receipt_number: nil,
            payment_method_data: nil,
            payment_method_id: nil,
            statement_descriptor: nil,
            statement_descriptor_prefix: nil,
            order_id: nil

  @type t :: %__MODULE__{
          clear_payment_method: boolean() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          invoice_settings: Inttegro.InvoiceSettingsInput.t() | nil,
          finalize: boolean() | nil,
          line_items: [term()] | nil,
          number: String.t() | nil,
          receipt_number: String.t() | nil,
          payment_method_data: Inttegro.UpdateOrderRequestPaymentMethodData.t() | nil,
          payment_method_id: String.t() | nil,
          statement_descriptor: String.t() | nil,
          statement_descriptor_prefix: String.t() | nil,
          order_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      clear_payment_method:
        if(is_nil(Map.get(map, "clear_payment_method")),
          do: nil,
          else: Map.get(map, "clear_payment_method")
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      invoice_settings:
        if(is_nil(Map.get(map, "invoice_settings")),
          do: nil,
          else: Inttegro.InvoiceSettingsInput.from_map(Map.get(map, "invoice_settings"))
        ),
      finalize: if(is_nil(Map.get(map, "finalize")), do: nil, else: Map.get(map, "finalize")),
      line_items:
        if(is_nil(Map.get(map, "line_items")),
          do: nil,
          else: Enum.map(Map.get(map, "line_items"), fn item -> item end)
        ),
      number: if(is_nil(Map.get(map, "number")), do: nil, else: Map.get(map, "number")),
      receipt_number:
        if(is_nil(Map.get(map, "receipt_number")), do: nil, else: Map.get(map, "receipt_number")),
      payment_method_data:
        if(is_nil(Map.get(map, "payment_method_data")),
          do: nil,
          else:
            Inttegro.UpdateOrderRequestPaymentMethodData.from_map(
              Map.get(map, "payment_method_data")
            )
        ),
      payment_method_id:
        if(is_nil(Map.get(map, "payment_method_id")),
          do: nil,
          else: Map.get(map, "payment_method_id")
        ),
      statement_descriptor:
        if(is_nil(Map.get(map, "statement_descriptor")),
          do: nil,
          else: Map.get(map, "statement_descriptor")
        ),
      statement_descriptor_prefix:
        if(is_nil(Map.get(map, "statement_descriptor_prefix")),
          do: nil,
          else: Map.get(map, "statement_descriptor_prefix")
        ),
      order_id: Map.fetch!(map, "order_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "clear_payment_method" =>
        if(is_nil(value.clear_payment_method),
          do: nil,
          else: Inttegro.Codec.encode(value.clear_payment_method)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "invoice_settings" =>
        if(is_nil(value.invoice_settings),
          do: nil,
          else: Inttegro.Codec.encode(value.invoice_settings)
        ),
      "finalize" =>
        if(is_nil(value.finalize), do: nil, else: Inttegro.Codec.encode(value.finalize)),
      "line_items" =>
        if(is_nil(value.line_items),
          do: nil,
          else: Enum.map(value.line_items, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "number" => if(is_nil(value.number), do: nil, else: Inttegro.Codec.encode(value.number)),
      "receipt_number" =>
        if(is_nil(value.receipt_number),
          do: nil,
          else: Inttegro.Codec.encode(value.receipt_number)
        ),
      "payment_method_data" =>
        if(is_nil(value.payment_method_data),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_data)
        ),
      "payment_method_id" =>
        if(is_nil(value.payment_method_id),
          do: nil,
          else: Inttegro.Codec.encode(value.payment_method_id)
        ),
      "statement_descriptor" =>
        if(is_nil(value.statement_descriptor),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor)
        ),
      "statement_descriptor_prefix" =>
        if(is_nil(value.statement_descriptor_prefix),
          do: nil,
          else: Inttegro.Codec.encode(value.statement_descriptor_prefix)
        ),
      "order_id" => Inttegro.Codec.encode(value.order_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateOrderRequestPaymentMethodData do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:type]
  defstruct mobile_money: nil, type: nil

  @type t :: %__MODULE__{
          mobile_money: Inttegro.UpdateOrderRequestPaymentMethodDataMobileMoney.t() | nil,
          type: Inttegro.PaymentMethodType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      mobile_money:
        if(is_nil(Map.get(map, "mobile_money")),
          do: nil,
          else:
            Inttegro.UpdateOrderRequestPaymentMethodDataMobileMoney.from_map(
              Map.get(map, "mobile_money")
            )
        ),
      type: Inttegro.PaymentMethodType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "mobile_money" =>
        if(is_nil(value.mobile_money), do: nil, else: Inttegro.Codec.encode(value.mobile_money)),
      "type" => Inttegro.PaymentMethodType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateOrderRequestPaymentMethodDataMobileMoney do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:network, :account_number]
  defstruct network: nil, account_number: nil

  @type t :: %__MODULE__{
          network: Inttegro.MobileMoneyNetwork.t(),
          account_number: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      network: Inttegro.MobileMoneyNetwork.decode(Map.fetch!(map, "network")),
      account_number: Map.fetch!(map, "account_number")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "network" => Inttegro.MobileMoneyNetwork.encode(value.network),
      "account_number" => Inttegro.Codec.encode(value.account_number)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdatePaymentMethodRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:payment_method_id]
  defstruct custom_data: nil, active: nil, archived: nil, owner: nil, payment_method_id: nil

  @type t :: %__MODULE__{
          custom_data: %{optional(String.t()) => String.t() | nil} | nil,
          active: boolean() | nil,
          archived: boolean() | nil,
          owner: Inttegro.UpdatePaymentMethodRequestOwner.t() | nil,
          payment_method_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else:
            Map.new(Map.get(map, "custom_data"), fn {key, value} ->
              {key, if(is_nil(value), do: nil, else: value)}
            end)
        ),
      active: if(is_nil(Map.get(map, "active")), do: nil, else: Map.get(map, "active")),
      archived: if(is_nil(Map.get(map, "archived")), do: nil, else: Map.get(map, "archived")),
      owner:
        if(is_nil(Map.get(map, "owner")),
          do: nil,
          else: Inttegro.UpdatePaymentMethodRequestOwner.from_map(Map.get(map, "owner"))
        ),
      payment_method_id: Map.fetch!(map, "payment_method_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), if(is_nil(value), do: nil, else: Inttegro.Codec.encode(value))}
            end)
        ),
      "active" => if(is_nil(value.active), do: nil, else: Inttegro.Codec.encode(value.active)),
      "archived" =>
        if(is_nil(value.archived), do: nil, else: Inttegro.Codec.encode(value.archived)),
      "owner" => if(is_nil(value.owner), do: nil, else: Inttegro.Codec.encode(value.owner)),
      "payment_method_id" => Inttegro.Codec.encode(value.payment_method_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdatePaymentMethodRequestOwner do
  @moduledoc "Typed Inttegro request parameters."
  defstruct name: nil, address: nil

  @type t :: %__MODULE__{
          name: String.t() | nil,
          address: Inttegro.UpdatePaymentMethodRequestOwnerAddress.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      address:
        if(is_nil(Map.get(map, "address")),
          do: nil,
          else: Inttegro.UpdatePaymentMethodRequestOwnerAddress.from_map(Map.get(map, "address"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "address" => if(is_nil(value.address), do: nil, else: Inttegro.Codec.encode(value.address))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdatePaymentMethodRequestOwnerAddress do
  @moduledoc "Typed Inttegro request parameters."
  defstruct city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            name: nil,
            phone_number: nil,
            post_code: nil,
            region: nil

  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          name: String.t() | nil,
          phone_number: String.t() | nil,
          post_code: String.t() | nil,
          region: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      city: if(is_nil(Map.get(map, "city")), do: nil, else: Map.get(map, "city")),
      country: if(is_nil(Map.get(map, "country")), do: nil, else: Map.get(map, "country")),
      line1: if(is_nil(Map.get(map, "line1")), do: nil, else: Map.get(map, "line1")),
      line2: if(is_nil(Map.get(map, "line2")), do: nil, else: Map.get(map, "line2")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      phone_number:
        if(is_nil(Map.get(map, "phone_number")), do: nil, else: Map.get(map, "phone_number")),
      post_code: if(is_nil(Map.get(map, "post_code")), do: nil, else: Map.get(map, "post_code")),
      region: if(is_nil(Map.get(map, "region")), do: nil, else: Map.get(map, "region"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "city" => if(is_nil(value.city), do: nil, else: Inttegro.Codec.encode(value.city)),
      "country" => if(is_nil(value.country), do: nil, else: Inttegro.Codec.encode(value.country)),
      "line1" => if(is_nil(value.line1), do: nil, else: Inttegro.Codec.encode(value.line1)),
      "line2" => if(is_nil(value.line2), do: nil, else: Inttegro.Codec.encode(value.line2)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "phone_number" =>
        if(is_nil(value.phone_number), do: nil, else: Inttegro.Codec.encode(value.phone_number)),
      "post_code" =>
        if(is_nil(value.post_code), do: nil, else: Inttegro.Codec.encode(value.post_code)),
      "region" => if(is_nil(value.region), do: nil, else: Inttegro.Codec.encode(value.region))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdatePriceRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:price_id]
  defstruct label: nil, about: nil, price_id: nil

  @type t :: %__MODULE__{
          label: String.t() | nil,
          about: String.t() | nil,
          price_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: if(is_nil(Map.get(map, "label")), do: nil, else: Map.get(map, "label")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      price_id: Map.fetch!(map, "price_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "label" => if(is_nil(value.label), do: nil, else: Inttegro.Codec.encode(value.label)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "price_id" => Inttegro.Codec.encode(value.price_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdateProductRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:product_id]
  defstruct type: nil,
            name: nil,
            description: nil,
            about: nil,
            tax_code: nil,
            category: nil,
            shipment: nil,
            dimensions: nil,
            unit_dimension: nil,
            media: nil,
            images: nil,
            attributes: nil,
            custom_data: nil,
            product_id: nil

  @type t :: %__MODULE__{
          type: Inttegro.ProductType.t() | nil,
          name: String.t() | nil,
          description: String.t() | nil,
          about: String.t() | nil,
          tax_code: String.t() | nil,
          category: String.t() | nil,
          shipment: Inttegro.ProductShipmentInput.t() | nil,
          dimensions: Inttegro.ProductDimensionsInput.t() | nil,
          unit_dimension: String.t() | nil,
          media: Inttegro.ProductMediaInput.t() | nil,
          images: [String.t()] | nil,
          attributes: [Inttegro.ProductAttributeInput.t()] | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          product_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      type:
        if(is_nil(Map.get(map, "type")),
          do: nil,
          else: Inttegro.ProductType.decode(Map.get(map, "type"))
        ),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      shipment:
        if(is_nil(Map.get(map, "shipment")),
          do: nil,
          else: Inttegro.ProductShipmentInput.from_map(Map.get(map, "shipment"))
        ),
      dimensions:
        if(is_nil(Map.get(map, "dimensions")),
          do: nil,
          else: Inttegro.ProductDimensionsInput.from_map(Map.get(map, "dimensions"))
        ),
      unit_dimension:
        if(is_nil(Map.get(map, "unit_dimension")), do: nil, else: Map.get(map, "unit_dimension")),
      media:
        if(is_nil(Map.get(map, "media")),
          do: nil,
          else: Inttegro.ProductMediaInput.from_map(Map.get(map, "media"))
        ),
      images:
        if(is_nil(Map.get(map, "images")),
          do: nil,
          else: Enum.map(Map.get(map, "images"), fn item -> item end)
        ),
      attributes:
        if(is_nil(Map.get(map, "attributes")),
          do: nil,
          else:
            Enum.map(Map.get(map, "attributes"), fn item ->
              Inttegro.ProductAttributeInput.from_map(item)
            end)
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      product_id: Map.fetch!(map, "product_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "type" => if(is_nil(value.type), do: nil, else: Inttegro.ProductType.encode(value.type)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "shipment" =>
        if(is_nil(value.shipment), do: nil, else: Inttegro.Codec.encode(value.shipment)),
      "dimensions" =>
        if(is_nil(value.dimensions), do: nil, else: Inttegro.Codec.encode(value.dimensions)),
      "unit_dimension" =>
        if(is_nil(value.unit_dimension),
          do: nil,
          else: Inttegro.Codec.encode(value.unit_dimension)
        ),
      "media" => if(is_nil(value.media), do: nil, else: Inttegro.Codec.encode(value.media)),
      "images" =>
        if(is_nil(value.images),
          do: nil,
          else: Enum.map(value.images, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "attributes" =>
        if(is_nil(value.attributes),
          do: nil,
          else: Enum.map(value.attributes, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "product_id" => Inttegro.Codec.encode(value.product_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UpdatePurchaseIntentRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct expires_at: nil, id: nil, quantity: nil, purchase_intent_id: nil, reactivate: nil

  @type t :: %__MODULE__{
          expires_at: String.t() | nil,
          id: String.t() | nil,
          quantity: Inttegro.UpdatePurchaseIntentRequestQuantity.t() | nil,
          purchase_intent_id: String.t() | nil,
          reactivate: boolean() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      expires_at:
        if(is_nil(Map.get(map, "expires_at")), do: nil, else: Map.get(map, "expires_at")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      quantity:
        if(is_nil(Map.get(map, "quantity")),
          do: nil,
          else: Inttegro.UpdatePurchaseIntentRequestQuantity.from_map(Map.get(map, "quantity"))
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

defmodule Inttegro.UpdatePurchaseIntentRequestQuantity do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:min]
  defstruct max: nil, min: nil

  @type t :: %__MODULE__{
          max: integer() | nil,
          min: integer()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max: if(is_nil(Map.get(map, "max")), do: nil, else: Map.get(map, "max")),
      min: Map.fetch!(map, "min")
    }
  end

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

defmodule Inttegro.UpdateSecretKeyRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:label, :secret_key_id]
  defstruct label: nil, secret_key_id: nil

  @type t :: %__MODULE__{
          label: String.t(),
          secret_key_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      label: Map.fetch!(map, "label"),
      secret_key_id: Map.fetch!(map, "secret_key_id")
    }
  end

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

defmodule Inttegro.UpdatedProduct do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:id, :name, :type, :created_at]
  defstruct id: nil,
            name: nil,
            description: nil,
            about: nil,
            type: nil,
            reference: nil,
            tax_code: nil,
            category: nil,
            custom_data: nil,
            dimensions: nil,
            prices: nil,
            unit_dim: nil,
            created_at: nil,
            updated_at: nil

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          description: String.t() | nil,
          about: String.t() | nil,
          type: Inttegro.ProductType.t(),
          reference: String.t() | nil,
          tax_code: String.t() | nil,
          category: String.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          dimensions: Inttegro.ProductDimensions.t() | nil,
          prices: [Inttegro.ProductPriceSummary.t()] | nil,
          unit_dim: String.t() | nil,
          created_at: String.t(),
          updated_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      name: Map.fetch!(map, "name"),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      about: if(is_nil(Map.get(map, "about")), do: nil, else: Map.get(map, "about")),
      type: Inttegro.ProductType.decode(Map.fetch!(map, "type")),
      reference: if(is_nil(Map.get(map, "reference")), do: nil, else: Map.get(map, "reference")),
      tax_code: if(is_nil(Map.get(map, "tax_code")), do: nil, else: Map.get(map, "tax_code")),
      category: if(is_nil(Map.get(map, "category")), do: nil, else: Map.get(map, "category")),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      dimensions:
        if(is_nil(Map.get(map, "dimensions")),
          do: nil,
          else: Inttegro.ProductDimensions.from_map(Map.get(map, "dimensions"))
        ),
      prices:
        if(is_nil(Map.get(map, "prices")),
          do: nil,
          else:
            Enum.map(Map.get(map, "prices"), fn item ->
              Inttegro.ProductPriceSummary.from_map(item)
            end)
        ),
      unit_dim: if(is_nil(Map.get(map, "unit_dim")), do: nil, else: Map.get(map, "unit_dim")),
      created_at: Map.fetch!(map, "created_at"),
      updated_at:
        if(is_nil(Map.get(map, "updated_at")), do: nil, else: Map.get(map, "updated_at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "name" => Inttegro.Codec.encode(value.name),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "about" => if(is_nil(value.about), do: nil, else: Inttegro.Codec.encode(value.about)),
      "type" => Inttegro.ProductType.encode(value.type),
      "reference" =>
        if(is_nil(value.reference), do: nil, else: Inttegro.Codec.encode(value.reference)),
      "tax_code" =>
        if(is_nil(value.tax_code), do: nil, else: Inttegro.Codec.encode(value.tax_code)),
      "category" =>
        if(is_nil(value.category), do: nil, else: Inttegro.Codec.encode(value.category)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "dimensions" =>
        if(is_nil(value.dimensions), do: nil, else: Inttegro.Codec.encode(value.dimensions)),
      "prices" =>
        if(is_nil(value.prices),
          do: nil,
          else: Enum.map(value.prices, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "unit_dim" =>
        if(is_nil(value.unit_dim), do: nil, else: Inttegro.Codec.encode(value.unit_dim)),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" =>
        if(is_nil(value.updated_at), do: nil, else: Inttegro.Codec.encode(value.updated_at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadFulfillment do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:upload_request, :file]
  defstruct upload_request: nil, file: nil

  @type t :: %__MODULE__{
          upload_request: Inttegro.UploadRequest.t(),
          file: Inttegro.FileUploadReceipt.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      upload_request: Inttegro.UploadRequest.from_map(Map.fetch!(map, "upload_request")),
      file: Inttegro.FileUploadReceipt.from_map(Map.fetch!(map, "file"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "upload_request" => Inttegro.Codec.encode(value.upload_request),
      "file" => Inttegro.Codec.encode(value.file)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequest do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [
    :id,
    :purpose,
    :status,
    :active,
    :constraints,
    :display,
    :subject,
    :recipient,
    :resource,
    :requester,
    :attempts,
    :created_at,
    :updated_at,
    :expires_at
  ]
  defstruct id: nil,
            purpose: nil,
            status: nil,
            active: nil,
            file_id: nil,
            upload_url: nil,
            constraints: nil,
            display: nil,
            subject: nil,
            recipient: nil,
            resource: nil,
            requester: nil,
            attempts: nil,
            latest_error: nil,
            canceled_by: nil,
            custom_data: nil,
            metadata: nil,
            created_at: nil,
            updated_at: nil,
            expires_at: nil,
            uploading_at: nil,
            fulfilled_at: nil,
            expired_at: nil,
            canceled_at: nil,
            attempt: nil

  @type t :: %__MODULE__{
          id: String.t(),
          purpose: String.t(),
          status: Inttegro.UploadRequestStatus.t(),
          active: boolean(),
          file_id: String.t() | nil,
          upload_url: String.t() | nil,
          constraints: Inttegro.UploadRequestConstraints.t(),
          display: Inttegro.UploadRequestDisplay.t(),
          subject: Inttegro.FileParty.t(),
          recipient: Inttegro.FileParty.t(),
          resource: Inttegro.FileResource.t(),
          requester: Inttegro.UploadRequestActor.t(),
          attempts: Inttegro.UploadRequestAttempts.t(),
          latest_error: Inttegro.UploadRequestLatestError.t() | nil,
          canceled_by: Inttegro.UploadRequestActor.t() | nil,
          custom_data: %{optional(String.t()) => String.t()} | nil,
          metadata: %{optional(String.t()) => String.t()} | nil,
          created_at: String.t(),
          updated_at: String.t(),
          expires_at: String.t(),
          uploading_at: String.t() | nil,
          fulfilled_at: String.t() | nil,
          expired_at: String.t() | nil,
          canceled_at: String.t() | nil,
          attempt: Inttegro.UploadRequestAttempt.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      id: Map.fetch!(map, "id"),
      purpose: Map.fetch!(map, "purpose"),
      status: Inttegro.UploadRequestStatus.decode(Map.fetch!(map, "status")),
      active: Map.fetch!(map, "active"),
      file_id: if(is_nil(Map.get(map, "file_id")), do: nil, else: Map.get(map, "file_id")),
      upload_url:
        if(is_nil(Map.get(map, "upload_url")), do: nil, else: Map.get(map, "upload_url")),
      constraints: Inttegro.UploadRequestConstraints.from_map(Map.fetch!(map, "constraints")),
      display: Inttegro.UploadRequestDisplay.from_map(Map.fetch!(map, "display")),
      subject: Inttegro.FileParty.from_map(Map.fetch!(map, "subject")),
      recipient: Inttegro.FileParty.from_map(Map.fetch!(map, "recipient")),
      resource: Inttegro.FileResource.from_map(Map.fetch!(map, "resource")),
      requester: Inttegro.UploadRequestActor.from_map(Map.fetch!(map, "requester")),
      attempts: Inttegro.UploadRequestAttempts.from_map(Map.fetch!(map, "attempts")),
      latest_error:
        if(is_nil(Map.get(map, "latest_error")),
          do: nil,
          else: Inttegro.UploadRequestLatestError.from_map(Map.get(map, "latest_error"))
        ),
      canceled_by:
        if(is_nil(Map.get(map, "canceled_by")),
          do: nil,
          else: Inttegro.UploadRequestActor.from_map(Map.get(map, "canceled_by"))
        ),
      custom_data:
        if(is_nil(Map.get(map, "custom_data")),
          do: nil,
          else: Map.new(Map.get(map, "custom_data"), fn {key, value} -> {key, value} end)
        ),
      metadata:
        if(is_nil(Map.get(map, "metadata")),
          do: nil,
          else: Map.new(Map.get(map, "metadata"), fn {key, value} -> {key, value} end)
        ),
      created_at: Map.fetch!(map, "created_at"),
      updated_at: Map.fetch!(map, "updated_at"),
      expires_at: Map.fetch!(map, "expires_at"),
      uploading_at:
        if(is_nil(Map.get(map, "uploading_at")), do: nil, else: Map.get(map, "uploading_at")),
      fulfilled_at:
        if(is_nil(Map.get(map, "fulfilled_at")), do: nil, else: Map.get(map, "fulfilled_at")),
      expired_at:
        if(is_nil(Map.get(map, "expired_at")), do: nil, else: Map.get(map, "expired_at")),
      canceled_at:
        if(is_nil(Map.get(map, "canceled_at")), do: nil, else: Map.get(map, "canceled_at")),
      attempt:
        if(is_nil(Map.get(map, "attempt")),
          do: nil,
          else: Inttegro.UploadRequestAttempt.from_map(Map.get(map, "attempt"))
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "id" => Inttegro.Codec.encode(value.id),
      "purpose" => Inttegro.Codec.encode(value.purpose),
      "status" => Inttegro.UploadRequestStatus.encode(value.status),
      "active" => Inttegro.Codec.encode(value.active),
      "file_id" => if(is_nil(value.file_id), do: nil, else: Inttegro.Codec.encode(value.file_id)),
      "upload_url" =>
        if(is_nil(value.upload_url), do: nil, else: Inttegro.Codec.encode(value.upload_url)),
      "constraints" => Inttegro.Codec.encode(value.constraints),
      "display" => Inttegro.Codec.encode(value.display),
      "subject" => Inttegro.Codec.encode(value.subject),
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "resource" => Inttegro.Codec.encode(value.resource),
      "requester" => Inttegro.Codec.encode(value.requester),
      "attempts" => Inttegro.Codec.encode(value.attempts),
      "latest_error" =>
        if(is_nil(value.latest_error), do: nil, else: Inttegro.Codec.encode(value.latest_error)),
      "canceled_by" =>
        if(is_nil(value.canceled_by), do: nil, else: Inttegro.Codec.encode(value.canceled_by)),
      "custom_data" =>
        if(is_nil(value.custom_data),
          do: nil,
          else:
            Map.new(value.custom_data, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "metadata" =>
        if(is_nil(value.metadata),
          do: nil,
          else:
            Map.new(value.metadata, fn {key, value} ->
              {to_string(key), Inttegro.Codec.encode(value)}
            end)
        ),
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "updated_at" => Inttegro.Codec.encode(value.updated_at),
      "expires_at" => Inttegro.Codec.encode(value.expires_at),
      "uploading_at" =>
        if(is_nil(value.uploading_at), do: nil, else: Inttegro.Codec.encode(value.uploading_at)),
      "fulfilled_at" =>
        if(is_nil(value.fulfilled_at), do: nil, else: Inttegro.Codec.encode(value.fulfilled_at)),
      "expired_at" =>
        if(is_nil(value.expired_at), do: nil, else: Inttegro.Codec.encode(value.expired_at)),
      "canceled_at" =>
        if(is_nil(value.canceled_at), do: nil, else: Inttegro.Codec.encode(value.canceled_at)),
      "attempt" => if(is_nil(value.attempt), do: nil, else: Inttegro.Codec.encode(value.attempt))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestActor do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:type]
  defstruct email: nil, id: nil, name: nil, type: nil

  @type t :: %__MODULE__{
          email: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          type: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      email: if(is_nil(Map.get(map, "email")), do: nil, else: Map.get(map, "email")),
      id: if(is_nil(Map.get(map, "id")), do: nil, else: Map.get(map, "id")),
      name: if(is_nil(Map.get(map, "name")), do: nil, else: Map.get(map, "name")),
      type: Map.fetch!(map, "type")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "email" => if(is_nil(value.email), do: nil, else: Inttegro.Codec.encode(value.email)),
      "id" => if(is_nil(value.id), do: nil, else: Inttegro.Codec.encode(value.id)),
      "name" => if(is_nil(value.name), do: nil, else: Inttegro.Codec.encode(value.name)),
      "type" => Inttegro.Codec.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestAttempt do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:attempted_at, :id, :ordinal, :status, :upload_request_id]
  defstruct attempted_at: nil,
            content_type: nil,
            declared_size: nil,
            error: nil,
            failed_at: nil,
            file_id: nil,
            filename: nil,
            id: nil,
            ordinal: nil,
            review: nil,
            status: nil,
            succeeded_at: nil,
            upload_request_id: nil

  @type t :: %__MODULE__{
          attempted_at: String.t(),
          content_type: String.t() | nil,
          declared_size: integer() | nil,
          error: Inttegro.UploadRequestLatestError.t() | nil,
          failed_at: String.t() | nil,
          file_id: String.t() | nil,
          filename: String.t() | nil,
          id: String.t(),
          ordinal: integer(),
          review: Inttegro.UploadRequestReview.t() | nil,
          status: String.t(),
          succeeded_at: String.t() | nil,
          upload_request_id: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      attempted_at: Map.fetch!(map, "attempted_at"),
      content_type:
        if(is_nil(Map.get(map, "content_type")), do: nil, else: Map.get(map, "content_type")),
      declared_size:
        if(is_nil(Map.get(map, "declared_size")), do: nil, else: Map.get(map, "declared_size")),
      error:
        if(is_nil(Map.get(map, "error")),
          do: nil,
          else: Inttegro.UploadRequestLatestError.from_map(Map.get(map, "error"))
        ),
      failed_at: if(is_nil(Map.get(map, "failed_at")), do: nil, else: Map.get(map, "failed_at")),
      file_id: if(is_nil(Map.get(map, "file_id")), do: nil, else: Map.get(map, "file_id")),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename")),
      id: Map.fetch!(map, "id"),
      ordinal: Map.fetch!(map, "ordinal"),
      review:
        if(is_nil(Map.get(map, "review")),
          do: nil,
          else: Inttegro.UploadRequestReview.from_map(Map.get(map, "review"))
        ),
      status: Map.fetch!(map, "status"),
      succeeded_at:
        if(is_nil(Map.get(map, "succeeded_at")), do: nil, else: Map.get(map, "succeeded_at")),
      upload_request_id: Map.fetch!(map, "upload_request_id")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "attempted_at" => Inttegro.Codec.encode(value.attempted_at),
      "content_type" =>
        if(is_nil(value.content_type), do: nil, else: Inttegro.Codec.encode(value.content_type)),
      "declared_size" =>
        if(is_nil(value.declared_size), do: nil, else: Inttegro.Codec.encode(value.declared_size)),
      "error" => if(is_nil(value.error), do: nil, else: Inttegro.Codec.encode(value.error)),
      "failed_at" =>
        if(is_nil(value.failed_at), do: nil, else: Inttegro.Codec.encode(value.failed_at)),
      "file_id" => if(is_nil(value.file_id), do: nil, else: Inttegro.Codec.encode(value.file_id)),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename)),
      "id" => Inttegro.Codec.encode(value.id),
      "ordinal" => Inttegro.Codec.encode(value.ordinal),
      "review" => if(is_nil(value.review), do: nil, else: Inttegro.Codec.encode(value.review)),
      "status" => Inttegro.Codec.encode(value.status),
      "succeeded_at" =>
        if(is_nil(value.succeeded_at), do: nil, else: Inttegro.Codec.encode(value.succeeded_at)),
      "upload_request_id" => Inttegro.Codec.encode(value.upload_request_id)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestAttempts do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:attempt_count, :failed_attempt_count]
  defstruct max_attempts: nil,
            attempt_count: nil,
            failed_attempt_count: nil,
            last_attempted_at: nil

  @type t :: %__MODULE__{
          max_attempts: integer() | nil,
          attempt_count: integer(),
          failed_attempt_count: integer(),
          last_attempted_at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max_attempts:
        if(is_nil(Map.get(map, "max_attempts")), do: nil, else: Map.get(map, "max_attempts")),
      attempt_count: Map.fetch!(map, "attempt_count"),
      failed_attempt_count: Map.fetch!(map, "failed_attempt_count"),
      last_attempted_at:
        if(is_nil(Map.get(map, "last_attempted_at")),
          do: nil,
          else: Map.get(map, "last_attempted_at")
        )
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max_attempts" =>
        if(is_nil(value.max_attempts), do: nil, else: Inttegro.Codec.encode(value.max_attempts)),
      "attempt_count" => Inttegro.Codec.encode(value.attempt_count),
      "failed_attempt_count" => Inttegro.Codec.encode(value.failed_attempt_count),
      "last_attempted_at" =>
        if(is_nil(value.last_attempted_at),
          do: nil,
          else: Inttegro.Codec.encode(value.last_attempted_at)
        )
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestAttemptsRequest do
  @moduledoc "Typed Inttegro request parameters."
  defstruct max_attempts: nil

  @type t :: %__MODULE__{
          max_attempts: integer() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      max_attempts:
        if(is_nil(Map.get(map, "max_attempts")), do: nil, else: Map.get(map, "max_attempts"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "max_attempts" =>
        if(is_nil(value.max_attempts), do: nil, else: Inttegro.Codec.encode(value.max_attempts))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestConstraints do
  @moduledoc "Typed Inttegro domain value."
  defstruct min_size: nil,
            max_size: nil,
            exact_size: nil,
            content_types: nil,
            extensions: nil,
            filename: nil

  @type t :: %__MODULE__{
          min_size: integer() | nil,
          max_size: integer() | nil,
          exact_size: integer() | nil,
          content_types: [String.t()] | nil,
          extensions: [String.t()] | nil,
          filename: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      min_size: if(is_nil(Map.get(map, "min_size")), do: nil, else: Map.get(map, "min_size")),
      max_size: if(is_nil(Map.get(map, "max_size")), do: nil, else: Map.get(map, "max_size")),
      exact_size:
        if(is_nil(Map.get(map, "exact_size")), do: nil, else: Map.get(map, "exact_size")),
      content_types:
        if(is_nil(Map.get(map, "content_types")),
          do: nil,
          else: Enum.map(Map.get(map, "content_types"), fn item -> item end)
        ),
      extensions:
        if(is_nil(Map.get(map, "extensions")),
          do: nil,
          else: Enum.map(Map.get(map, "extensions"), fn item -> item end)
        ),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "min_size" =>
        if(is_nil(value.min_size), do: nil, else: Inttegro.Codec.encode(value.min_size)),
      "max_size" =>
        if(is_nil(value.max_size), do: nil, else: Inttegro.Codec.encode(value.max_size)),
      "exact_size" =>
        if(is_nil(value.exact_size), do: nil, else: Inttegro.Codec.encode(value.exact_size)),
      "content_types" =>
        if(is_nil(value.content_types),
          do: nil,
          else: Enum.map(value.content_types, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "extensions" =>
        if(is_nil(value.extensions),
          do: nil,
          else: Enum.map(value.extensions, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestConstraintsInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct min_size: nil,
            max_size: nil,
            exact_size: nil,
            content_types: nil,
            extensions: nil,
            filename: nil

  @type t :: %__MODULE__{
          min_size: integer() | nil,
          max_size: integer() | nil,
          exact_size: integer() | nil,
          content_types: [String.t()] | nil,
          extensions: [String.t()] | nil,
          filename: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      min_size: if(is_nil(Map.get(map, "min_size")), do: nil, else: Map.get(map, "min_size")),
      max_size: if(is_nil(Map.get(map, "max_size")), do: nil, else: Map.get(map, "max_size")),
      exact_size:
        if(is_nil(Map.get(map, "exact_size")), do: nil, else: Map.get(map, "exact_size")),
      content_types:
        if(is_nil(Map.get(map, "content_types")),
          do: nil,
          else: Enum.map(Map.get(map, "content_types"), fn item -> item end)
        ),
      extensions:
        if(is_nil(Map.get(map, "extensions")),
          do: nil,
          else: Enum.map(Map.get(map, "extensions"), fn item -> item end)
        ),
      filename: if(is_nil(Map.get(map, "filename")), do: nil, else: Map.get(map, "filename"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "min_size" =>
        if(is_nil(value.min_size), do: nil, else: Inttegro.Codec.encode(value.min_size)),
      "max_size" =>
        if(is_nil(value.max_size), do: nil, else: Inttegro.Codec.encode(value.max_size)),
      "exact_size" =>
        if(is_nil(value.exact_size), do: nil, else: Inttegro.Codec.encode(value.exact_size)),
      "content_types" =>
        if(is_nil(value.content_types),
          do: nil,
          else: Enum.map(value.content_types, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "extensions" =>
        if(is_nil(value.extensions),
          do: nil,
          else: Enum.map(value.extensions, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "filename" =>
        if(is_nil(value.filename), do: nil, else: Inttegro.Codec.encode(value.filename))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestDisplay do
  @moduledoc "Typed Inttegro domain value."
  defstruct title: nil, description: nil, help_text: nil

  @type t :: %__MODULE__{
          title: String.t() | nil,
          description: String.t() | nil,
          help_text: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      title: if(is_nil(Map.get(map, "title")), do: nil, else: Map.get(map, "title")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      help_text: if(is_nil(Map.get(map, "help_text")), do: nil, else: Map.get(map, "help_text"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "title" => if(is_nil(value.title), do: nil, else: Inttegro.Codec.encode(value.title)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "help_text" =>
        if(is_nil(value.help_text), do: nil, else: Inttegro.Codec.encode(value.help_text))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestDisplayInput do
  @moduledoc "Typed Inttegro request parameters."
  defstruct title: nil, description: nil, help_text: nil

  @type t :: %__MODULE__{
          title: String.t() | nil,
          description: String.t() | nil,
          help_text: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      title: if(is_nil(Map.get(map, "title")), do: nil, else: Map.get(map, "title")),
      description:
        if(is_nil(Map.get(map, "description")), do: nil, else: Map.get(map, "description")),
      help_text: if(is_nil(Map.get(map, "help_text")), do: nil, else: Map.get(map, "help_text"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "title" => if(is_nil(value.title), do: nil, else: Inttegro.Codec.encode(value.title)),
      "description" =>
        if(is_nil(value.description), do: nil, else: Inttegro.Codec.encode(value.description)),
      "help_text" =>
        if(is_nil(value.help_text), do: nil, else: Inttegro.Codec.encode(value.help_text))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestLatestError do
  @moduledoc "Typed Inttegro domain value."
  defstruct code: nil, param: nil, message: nil, retryable: nil, at: nil

  @type t :: %__MODULE__{
          code: String.t() | nil,
          param: String.t() | nil,
          message: String.t() | nil,
          retryable: boolean() | nil,
          at: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      code: if(is_nil(Map.get(map, "code")), do: nil, else: Map.get(map, "code")),
      param: if(is_nil(Map.get(map, "param")), do: nil, else: Map.get(map, "param")),
      message: if(is_nil(Map.get(map, "message")), do: nil, else: Map.get(map, "message")),
      retryable: if(is_nil(Map.get(map, "retryable")), do: nil, else: Map.get(map, "retryable")),
      at: if(is_nil(Map.get(map, "at")), do: nil, else: Map.get(map, "at"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "code" => if(is_nil(value.code), do: nil, else: Inttegro.Codec.encode(value.code)),
      "param" => if(is_nil(value.param), do: nil, else: Inttegro.Codec.encode(value.param)),
      "message" => if(is_nil(value.message), do: nil, else: Inttegro.Codec.encode(value.message)),
      "retryable" =>
        if(is_nil(value.retryable), do: nil, else: Inttegro.Codec.encode(value.retryable)),
      "at" => if(is_nil(value.at), do: nil, else: Inttegro.Codec.encode(value.at))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestPage do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:number, :size, :upload_requests]
  defstruct number: nil, size: nil, upload_requests: nil

  @type t :: %__MODULE__{
          number: integer(),
          size: integer(),
          upload_requests: [Inttegro.UploadRequest.t()]
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      number: Map.fetch!(map, "number"),
      size: Map.fetch!(map, "size"),
      upload_requests:
        Enum.map(Map.fetch!(map, "upload_requests"), fn item ->
          Inttegro.UploadRequest.from_map(item)
        end)
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "number" => Inttegro.Codec.encode(value.number),
      "size" => Inttegro.Codec.encode(value.size),
      "upload_requests" =>
        Enum.map(value.upload_requests, fn item -> Inttegro.Codec.encode(item) end)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestReview do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:created_at, :decision, :reviewed_at, :type]
  defstruct created_at: nil,
            decision: nil,
            file_id: nil,
            public_message: nil,
            reasons: nil,
            reviewed_at: nil,
            type: nil

  @type t :: %__MODULE__{
          created_at: String.t(),
          decision: Inttegro.UploadReviewDecision.t(),
          file_id: String.t() | nil,
          public_message: String.t() | nil,
          reasons: [Inttegro.UploadRequestReviewReason.t()] | nil,
          reviewed_at: String.t(),
          type: Inttegro.UploadReviewType.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      created_at: Map.fetch!(map, "created_at"),
      decision: Inttegro.UploadReviewDecision.decode(Map.fetch!(map, "decision")),
      file_id: if(is_nil(Map.get(map, "file_id")), do: nil, else: Map.get(map, "file_id")),
      public_message:
        if(is_nil(Map.get(map, "public_message")), do: nil, else: Map.get(map, "public_message")),
      reasons:
        if(is_nil(Map.get(map, "reasons")),
          do: nil,
          else:
            Enum.map(Map.get(map, "reasons"), fn item ->
              Inttegro.UploadRequestReviewReason.from_map(item)
            end)
        ),
      reviewed_at: Map.fetch!(map, "reviewed_at"),
      type: Inttegro.UploadReviewType.decode(Map.fetch!(map, "type"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "created_at" => Inttegro.Codec.encode(value.created_at),
      "decision" => Inttegro.UploadReviewDecision.encode(value.decision),
      "file_id" => if(is_nil(value.file_id), do: nil, else: Inttegro.Codec.encode(value.file_id)),
      "public_message" =>
        if(is_nil(value.public_message),
          do: nil,
          else: Inttegro.Codec.encode(value.public_message)
        ),
      "reasons" =>
        if(is_nil(value.reasons),
          do: nil,
          else: Enum.map(value.reasons, fn item -> Inttegro.Codec.encode(item) end)
        ),
      "reviewed_at" => Inttegro.Codec.encode(value.reviewed_at),
      "type" => Inttegro.UploadReviewType.encode(value.type)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestReviewReason do
  @moduledoc "Typed Inttegro domain value."
  @enforce_keys [:code, :message]
  defstruct code: nil, message: nil, param: nil

  @type t :: %__MODULE__{
          code: String.t(),
          message: String.t(),
          param: String.t() | nil
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      code: Map.fetch!(map, "code"),
      message: Map.fetch!(map, "message"),
      param: if(is_nil(Map.get(map, "param")), do: nil, else: Map.get(map, "param"))
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "code" => Inttegro.Codec.encode(value.code),
      "message" => Inttegro.Codec.encode(value.message),
      "param" => if(is_nil(value.param), do: nil, else: Inttegro.Codec.encode(value.param))
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.UploadRequestReviewReasonInput do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:code, :message]
  defstruct param: nil, code: nil, message: nil

  @type t :: %__MODULE__{
          param: String.t() | nil,
          code: String.t(),
          message: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      param: if(is_nil(Map.get(map, "param")), do: nil, else: Map.get(map, "param")),
      code: Map.fetch!(map, "code"),
      message: Map.fetch!(map, "message")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "param" => if(is_nil(value.param), do: nil, else: Inttegro.Codec.encode(value.param)),
      "code" => Inttegro.Codec.encode(value.code),
      "message" => Inttegro.Codec.encode(value.message)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end

defmodule Inttegro.VerifyOTPRequest do
  @moduledoc "Typed Inttegro request parameters."
  @enforce_keys [:transaction_id, :recipient, :token]
  defstruct transaction_id: nil, recipient: nil, token: nil

  @type t :: %__MODULE__{
          transaction_id: String.t(),
          recipient: String.t(),
          token: String.t()
        }
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      transaction_id: Map.fetch!(map, "transaction_id"),
      recipient: Map.fetch!(map, "recipient"),
      token: Map.fetch!(map, "token")
    }
  end

  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "transaction_id" => Inttegro.Codec.encode(value.transaction_id),
      "recipient" => Inttegro.Codec.encode(value.recipient),
      "token" => Inttegro.Codec.encode(value.token)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
