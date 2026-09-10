# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Shared.ResourceSupply do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:by, :supplied_at]
  defstruct attempt_id: nil,
            by: nil,
            channel: nil,
            resource_id: nil,
            resource_type: nil,
            supplied_at: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          attempt_id: String.t() | nil,
          by: String.t(),
          channel: String.t() | nil,
          resource_id: String.t() | nil,
          resource_type: String.t() | nil,
          supplied_at: DateTime.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
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
      supplied_at: Inttegro.Codec.decode_timestamp(Map.fetch!(map, "supplied_at"))
    }
  end

  @doc false
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
