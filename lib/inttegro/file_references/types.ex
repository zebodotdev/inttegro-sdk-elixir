# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.FileReferences.FileReferenceInput do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:file_id, :field]
  defstruct reference: nil, reference_kind: nil, purpose: nil, file_id: nil, field: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          reference: String.t() | nil,
          reference_kind: String.t() | nil,
          purpose: String.t() | nil,
          file_id: String.t(),
          field: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
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

  @doc false
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

defmodule Inttegro.FileReferences.FileReferenceReconcileRequest do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :request)
  @enforce_keys [:resource_type, :resource_id]
  defstruct references: nil, resource_type: nil, resource_id: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :request)
  @type t :: %__MODULE__{
          references: [Inttegro.FileReferences.FileReferenceInput.t()] | nil,
          resource_type: String.t(),
          resource_id: String.t()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      references:
        if(is_nil(Map.get(map, "references")),
          do: nil,
          else:
            Enum.map(Map.get(map, "references"), fn item ->
              Inttegro.FileReferences.FileReferenceInput.from_map(item)
            end)
        ),
      resource_type: Map.fetch!(map, "resource_type"),
      resource_id: Map.fetch!(map, "resource_id")
    }
  end

  @doc false
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

defmodule Inttegro.FileReferences.FileReferenceReconciliation do
  @moduledoc Inttegro.Docs.module_doc(__MODULE__, :domain)
  @enforce_keys [:reconciled]
  defstruct reconciled: nil

  @typedoc Inttegro.Docs.type_doc(__MODULE__, :domain)
  @type t :: %__MODULE__{
          reconciled: boolean()
        }
  @doc Inttegro.Docs.constructor_doc(__MODULE__)
  @spec new!(map() | keyword()) :: t()
  def new!(attrs \\ %{}), do: struct!(__MODULE__, attrs)
  @doc false
  @spec from_map(map()) :: t()
  def from_map(map) when is_map(map) do
    %__MODULE__{
      reconciled: Map.fetch!(map, "reconciled")
    }
  end

  @doc false
  @spec to_map(t()) :: map()
  def to_map(value) do
    %{
      "reconciled" => Inttegro.Codec.encode(value.reconciled)
    }
    |> Enum.reject(fn {_key, item} -> is_nil(item) end)
    |> Map.new()
  end
end
