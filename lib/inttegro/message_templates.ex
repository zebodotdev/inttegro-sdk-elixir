# Typed Inttegro API resource.

defmodule Inttegro.MessageTemplates do
  @moduledoc Inttegro.Docs.resource_doc(__MODULE__)
  alias Inttegro.Client

  @doc """
  Creates an app-scoped reusable SMS or email message template. The API generates the template `id`; clients must not supply an `id`, `template_id`, or template key.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.CreateMessageTemplateRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplate.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      # Build one of the concrete request variants listed by Inttegro.MessageTemplates.CreateMessageTemplateRequest.t/0.
      request = concrete_request

      case Inttegro.MessageTemplates.create(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec create(Client.t(), Inttegro.MessageTemplates.CreateMessageTemplateRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplate.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/create",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.create",
             "message_template",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplate.from_map(value)}
    end
  end

  @doc """
  Updates a reusable message template and creates a new draft version. Published versions remain stable until the draft is explicitly published.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.UpdateMessageTemplateRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplate.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.UpdateMessageTemplateRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.update(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec update(Client.t(), Inttegro.MessageTemplates.UpdateMessageTemplateRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplate.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/update",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.update",
             "message_template",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplate.from_map(value)}
    end
  end

  @doc """
  Publishes the current draft version of a reusable message template.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.MessageTemplateIDRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplate.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.MessageTemplateIDRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.publish(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec publish(Client.t(), Inttegro.MessageTemplates.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplate.t()} | {:error, Exception.t()}
  def publish(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/publish",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.publish",
             "message_template",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplate.from_map(value)}
    end
  end

  @doc """
  Archives a reusable message template so it cannot be updated or used for new sends.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.MessageTemplateIDRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplate.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.MessageTemplateIDRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.archive(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec archive(Client.t(), Inttegro.MessageTemplates.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplate.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/archive",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.archive",
             "message_template",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplate.from_map(value)}
    end
  end

  @doc """
  Retrieves a reusable message template by its API-generated `id`.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.MessageTemplateIDRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplate.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.MessageTemplateIDRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.lookup(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec lookup(Client.t(), Inttegro.MessageTemplates.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplate.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/lookup",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.lookup",
             "message_template",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplate.from_map(value)}
    end
  end

  @doc """
  Retrieves app-scoped templates newest-updated first. Purpose and locale filters are applied after selecting the backing page, so filtered results can be sparse.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.PageMessageTemplatesRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplatesPage.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.PageMessageTemplatesRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.page(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec page(Client.t(), Inttegro.MessageTemplates.PageMessageTemplatesRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplatesPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/page",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.page",
             "page",
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplatesPage.from_map(value)}
    end
  end

  @doc """
  Renders a draft-aware preview of a reusable message template with bundled variables.

  ## Parameters

  * `client` — an authenticated `Inttegro.Client`.
  * `request` — a `Inttegro.MessageTemplates.RenderMessageTemplatePreviewRequest` containing the operation input.
  * `options` — request options such as `:idempotency_key` and additional `:headers`.

  ## Returns

  Returns `{:ok, Inttegro.MessageTemplates.MessageTemplatePreview.t()}` when Inttegro accepts and decodes the operation. Returns
  `{:error, exception}` for API, transport, or decoding failures. A successful API response can
  still describe an asynchronous resource that has not reached its terminal state.

  ## Example

      request = Inttegro.MessageTemplates.RenderMessageTemplatePreviewRequest.new!(request_attributes)

      case Inttegro.MessageTemplates.render_preview(client, request) do
        {:ok, result} -> result
        {:error, error} -> {:error, error}
      end
  """
  @spec render_preview(
          Client.t(),
          Inttegro.MessageTemplates.RenderMessageTemplatePreviewRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.MessageTemplates.MessageTemplatePreview.t()} | {:error, Exception.t()}
  def render_preview(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/message_templates/render_preview",
             Inttegro.Codec.encode(request),
             options,
             "message_templates.render_preview",
             nil,
             true
           ) do
      {:ok, Inttegro.MessageTemplates.MessageTemplatePreview.from_map(value)}
    end
  end
end
