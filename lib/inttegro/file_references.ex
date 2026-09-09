# Typed Inttegro API resource.

defmodule Inttegro.FileReferences do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Replaces the complete set of live file references for one Inttegro resource. Omitting `references` or sending an empty array clears the set.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.FileReferences.FileReferenceReconcileRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.FileReferences.FileReferenceReconciliation.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.FileReferences.FileReferenceReconcileRequest.new!(request_attributes)

      case Inttegro.FileReferences.reconcile(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec reconcile(
          Client.t(),
          Inttegro.FileReferences.FileReferenceReconcileRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FileReferences.FileReferenceReconciliation.t()} | {:error, Exception.t()}
  def reconcile(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_references/reconcile",
             Inttegro.Codec.encode(request),
             options,
             "file_references.reconcile",
             nil,
             true
           ) do
      {:ok, Inttegro.FileReferences.FileReferenceReconciliation.from_map(value)}
    end
  end
end
