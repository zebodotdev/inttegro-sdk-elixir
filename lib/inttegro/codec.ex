# Generated Inttegro types for this domain. Do not edit manually.

defmodule Inttegro.Codec do
  @moduledoc false
  def encode(nil), do: nil
  def encode(%DateTime{} = value), do: DateTime.to_iso8601(value)
  def encode(value) when is_list(value), do: Enum.map(value, &encode/1)

  def encode(value) when is_map(value) and not is_struct(value),
    do: Map.new(value, fn {key, item} -> {to_string(key), encode(item)} end)

  def encode(%module{} = value) do
    if function_exported?(module, :to_map, 1),
      do: module.to_map(value),
      else: Map.from_struct(value)
  end

  def encode(value), do: value

  def decode_timestamp(nil), do: nil
  def decode_timestamp(%DateTime{} = value), do: value

  def decode_timestamp(value) when is_binary(value) do
    case DateTime.from_iso8601(value) do
      {:ok, timestamp, _offset} ->
        timestamp

      {:error, reason} ->
        raise ArgumentError, "invalid ISO-8601 timestamp #{inspect(value)}: #{reason}"
    end
  end

  def decode_timestamp(value) do
    raise ArgumentError, "expected an ISO-8601 timestamp, got: #{inspect(value)}"
  end
end
