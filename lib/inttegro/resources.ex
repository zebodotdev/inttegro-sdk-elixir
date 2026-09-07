# Typed Inttegro API resources.

defmodule Inttegro.Apps do
  @moduledoc "Operations for Inttegro apps."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateApplicationRequest.t(), keyword()) ::
          {:ok, Inttegro.Application.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/apps/create",
             Inttegro.Codec.encode(request),
             options,
             "apps.create",
             "app",
             true
           ) do
      {:ok, Inttegro.Application.from_map(value)}
    end
  end

  @spec lookup(Client.t(), keyword()) :: {:ok, Inttegro.Application.t()} | {:error, Exception.t()}
  def lookup(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/apps/lookup",
             %{},
             options,
             "apps.lookup",
             "app",
             true
           ) do
      {:ok, Inttegro.Application.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateApplicationRequest.t(), keyword()) ::
          {:ok, Inttegro.Application.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/apps/update",
             Inttegro.Codec.encode(request),
             options,
             "apps.update",
             "app",
             true
           ) do
      {:ok, Inttegro.Application.from_map(value)}
    end
  end
end

defmodule Inttegro.BalanceTransactions do
  @moduledoc "Operations for Inttegro balance transactions."
  alias Inttegro.Client

  @spec lookup(Client.t(), Inttegro.LookupBalanceTransactionRequest.t(), keyword()) ::
          {:ok, Inttegro.BalanceTransaction.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balance_transactions/lookup",
             Inttegro.Codec.encode(request),
             options,
             "balance_transactions.lookup",
             "transaction",
             true
           ) do
      {:ok, Inttegro.BalanceTransaction.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageBalanceTransactionsRequest.t(), keyword()) ::
          {:ok, Inttegro.BalanceTransactionPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balance_transactions/page",
             Inttegro.Codec.encode(request),
             options,
             "balance_transactions.page",
             "page",
             true
           ) do
      {:ok, Inttegro.BalanceTransactionPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Balances do
  @moduledoc "Operations for Inttegro balances."
  alias Inttegro.Client

  @spec get(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.CurrencyBalanceSnapshot.t()}}
          | {:error, Exception.t()}
  def get(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/balances",
             %{},
             options,
             "balances.get",
             "balances",
             true
           ) do
      {:ok,
       Map.new(value, fn {key, value} ->
         {key, Inttegro.CurrencyBalanceSnapshot.from_map(value)}
       end)}
    end
  end
end

defmodule Inttegro.Broadcasts do
  @moduledoc "Operations for Inttegro broadcasts."
  alias Inttegro.Client

  @spec lookup(Client.t(), Inttegro.LookupBroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.BroadcastDetail.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/broadcasts/lookup",
             Inttegro.Codec.encode(request),
             options,
             "broadcasts.lookup",
             "broadcast",
             true
           ) do
      {:ok, Inttegro.BroadcastDetail.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelBroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.BroadcastDetail.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/broadcasts/cancel",
             Inttegro.Codec.encode(request),
             options,
             "broadcasts.cancel",
             "broadcast",
             true
           ) do
      {:ok, Inttegro.BroadcastDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Chimes do
  @moduledoc "Operations for Inttegro chimes."
  alias Inttegro.Client

  @spec send(Client.t(), Inttegro.SendChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.Chime.t()} | {:error, Exception.t()}
  def send(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/chimes/send",
             Inttegro.Codec.encode(request),
             options,
             "chimes.send",
             "chime",
             true
           ) do
      {:ok, Inttegro.Chime.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.Chime.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/chimes/lookup",
             Inttegro.Codec.encode(request),
             options,
             "chimes.lookup",
             "chime",
             true
           ) do
      {:ok, Inttegro.Chime.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageChimesRequest.t(), keyword()) ::
          {:ok, Inttegro.ChimePage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/chimes/page",
             Inttegro.Codec.encode(request),
             options,
             "chimes.page",
             "page",
             true
           ) do
      {:ok, Inttegro.ChimePage.from_map(value)}
    end
  end

  @spec schedule(Client.t(), Inttegro.ScheduleChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.ScheduleCreationDetail.t()} | {:error, Exception.t()}
  def schedule(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/chimes/schedule",
             Inttegro.Codec.encode(request),
             options,
             "chimes.schedule",
             "scheduled_chime",
             true
           ) do
      {:ok, Inttegro.ScheduleCreationDetail.from_map(value)}
    end
  end

  @spec broadcast(Client.t(), Inttegro.BroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.BroadcastCreationDetail.t()} | {:error, Exception.t()}
  def broadcast(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/chimes/broadcast",
             Inttegro.Codec.encode(request),
             options,
             "chimes.broadcast",
             "broadcast",
             true
           ) do
      {:ok, Inttegro.BroadcastCreationDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Customers do
  @moduledoc "Operations for Inttegro customers."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customer.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/create",
             Inttegro.Codec.encode(request),
             options,
             "customers.create",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customer.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customer.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/lookup",
             Inttegro.Codec.encode(request),
             options,
             "customers.lookup",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customer.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customer.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/update",
             Inttegro.Codec.encode(request),
             options,
             "customers.update",
             "customer",
             true
           ) do
      {:ok, Inttegro.Customer.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageCustomersRequest.t(), keyword()) ::
          {:ok, Inttegro.CustomerPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/customers/page",
             Inttegro.Codec.encode(request),
             options,
             "customers.page",
             "page",
             true
           ) do
      {:ok, Inttegro.CustomerPage.from_map(value)}
    end
  end
end

defmodule Inttegro.FileLinks do
  @moduledoc "Operations for Inttegro file links."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinkCreation.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/create",
             Inttegro.Codec.encode(request),
             options,
             "file_links.create",
             nil,
             true
           ) do
      {:ok, Inttegro.FileLinkCreation.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLink.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/lookup",
             Inttegro.Codec.encode(request),
             options,
             "file_links.lookup",
             "file_link",
             true
           ) do
      {:ok, Inttegro.FileLink.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageFileLinksRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinkPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/page",
             Inttegro.Codec.encode(request),
             options,
             "file_links.page",
             "page",
             true
           ) do
      {:ok, Inttegro.FileLinkPage.from_map(value)}
    end
  end

  @spec revoke(Client.t(), Inttegro.RevokeFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLink.t()} | {:error, Exception.t()}
  def revoke(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/file_links/revoke",
             Inttegro.Codec.encode(request),
             options,
             "file_links.revoke",
             "file_link",
             true
           ) do
      {:ok, Inttegro.FileLink.from_map(value)}
    end
  end

  @spec open(Client.t(), Inttegro.OpenFileLinkRequest.t()) ::
          {:ok, Inttegro.FileDownload.t()} | {:error, Exception.t()}
  def open(client, request) do
    with {:ok, value} <-
           Client.open_file_link(client, "/file_links/open", request, "file_links.open") do
      {:ok, value}
    end
  end
end

defmodule Inttegro.FileReferences do
  @moduledoc "Operations for Inttegro file references."
  alias Inttegro.Client

  @spec reconcile(Client.t(), Inttegro.FileReferenceReconcileRequest.t(), keyword()) ::
          {:ok, Inttegro.FileReferenceReconciliation.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FileReferenceReconciliation.from_map(value)}
    end
  end
end

defmodule Inttegro.Files do
  @moduledoc "Operations for Inttegro files."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateFileRequest.t(), keyword()) ::
          {:ok, Inttegro.File.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.upload_file(client, "/files/create", request, options, "files.create", "file") do
      {:ok, Inttegro.File.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupFileRequest.t(), keyword()) ::
          {:ok, Inttegro.File.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/lookup",
             Inttegro.Codec.encode(request),
             options,
             "files.lookup",
             "file",
             true
           ) do
      {:ok, Inttegro.File.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageFilesRequest.t(), keyword()) ::
          {:ok, Inttegro.FilePage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/page",
             Inttegro.Codec.encode(request),
             options,
             "files.page",
             "page",
             true
           ) do
      {:ok, Inttegro.FilePage.from_map(value)}
    end
  end

  @spec contents(Client.t(), Inttegro.FileContentsRequest.t(), keyword()) ::
          {:ok, Inttegro.FileDownload.t()} | {:error, Exception.t()}
  def contents(client, request, options \\ []) do
    with {:ok, value} <-
           Client.download(
             client,
             "POST",
             "/files/contents",
             Inttegro.Codec.encode(request),
             options,
             "files.contents",
             true
           ) do
      {:ok, value}
    end
  end

  @spec delete(Client.t(), Inttegro.DeleteFileRequest.t(), keyword()) ::
          {:ok, Inttegro.File.t()} | {:error, Exception.t()}
  def delete(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/files/delete",
             Inttegro.Codec.encode(request),
             options,
             "files.delete",
             "file",
             true
           ) do
      {:ok, Inttegro.File.from_map(value)}
    end
  end
end

defmodule Inttegro.FinancialAccounts do
  @moduledoc "Operations for Inttegro financial accounts."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.FinancialAccountCreateRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/create",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.create",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/lookup",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.lookup",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.FinancialAccountPageRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccountPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/page",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.page",
             "page",
             true
           ) do
      {:ok, Inttegro.FinancialAccountPage.from_map(value)}
    end
  end

  @spec connect(Client.t(), Inttegro.FinancialAccountCreateRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def connect(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/connect",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.connect",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.FinancialAccountUpdateRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/update",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.update",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec enable_push(Client.t(), Inttegro.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def enable_push(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/enable_push",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.enable_push",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec disable_push(Client.t(), Inttegro.FinancialAccountDisableRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def disable_push(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/disable_push",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.disable_push",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec disconnect(Client.t(), Inttegro.FinancialAccountDisableRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def disconnect(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/disconnect",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.disconnect",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec reconnect(Client.t(), Inttegro.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def reconnect(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/reconnect",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.reconnect",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec enable_pull(Client.t(), Inttegro.FinancialAccountEnablePullRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def enable_pull(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/enable_pull",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.enable_pull",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end

  @spec disable_pull(Client.t(), Inttegro.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccount.t()} | {:error, Exception.t()}
  def disable_pull(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/financial_accounts/disable_pull",
             Inttegro.Codec.encode(request),
             options,
             "financial_accounts.disable_pull",
             "account",
             true
           ) do
      {:ok, Inttegro.FinancialAccount.from_map(value)}
    end
  end
end

defmodule Inttegro.Keys do
  @moduledoc "Operations for Inttegro keys."
  alias Inttegro.Client

  @spec generate(Client.t(), Inttegro.GenerateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.GeneratedSecretKey.t()} | {:error, Exception.t()}
  def generate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/generate",
             Inttegro.Codec.encode(request),
             options,
             "keys.generate",
             "key",
             true
           ) do
      {:ok, Inttegro.GeneratedSecretKey.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageSecretKeysRequest.t(), keyword()) ::
          {:ok, Inttegro.SecretKeyPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/page",
             Inttegro.Codec.encode(request),
             options,
             "keys.page",
             "page",
             true
           ) do
      {:ok, Inttegro.SecretKeyPage.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.SecretKey.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/lookup",
             Inttegro.Codec.encode(request),
             options,
             "keys.lookup",
             "key",
             true
           ) do
      {:ok, Inttegro.SecretKey.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.SecretKey.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/update",
             Inttegro.Codec.encode(request),
             options,
             "keys.update",
             "key",
             true
           ) do
      {:ok, Inttegro.SecretKey.from_map(value)}
    end
  end

  @spec destroy(Client.t(), Inttegro.DestroySecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.SecretKey.t()} | {:error, Exception.t()}
  def destroy(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/destroy",
             Inttegro.Codec.encode(request),
             options,
             "keys.destroy",
             "key",
             true
           ) do
      {:ok, Inttegro.SecretKey.from_map(value)}
    end
  end

  @spec usage(Client.t(), Inttegro.SecretKeyUsageRequest.t(), keyword()) ::
          {:ok, Inttegro.SecretKeyUsage.t()} | {:error, Exception.t()}
  def usage(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/keys/usage",
             Inttegro.Codec.encode(request),
             options,
             "keys.usage",
             nil,
             true
           ) do
      {:ok, Inttegro.SecretKeyUsage.from_map(value)}
    end
  end
end

defmodule Inttegro.MessageTemplates do
  @moduledoc "Operations for Inttegro message templates."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateMessageTemplateRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplate.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplate.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateMessageTemplateRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplate.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplate.from_map(value)}
    end
  end

  @spec publish(Client.t(), Inttegro.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplate.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplate.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplate.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplate.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.MessageTemplateIDRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplate.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplate.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageMessageTemplatesRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplatesPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplatesPage.from_map(value)}
    end
  end

  @spec render_preview(Client.t(), Inttegro.RenderMessageTemplatePreviewRequest.t(), keyword()) ::
          {:ok, Inttegro.MessageTemplatePreview.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.MessageTemplatePreview.from_map(value)}
    end
  end
end

defmodule Inttegro.Orders do
  @moduledoc "Operations for Inttegro orders."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/create",
             Inttegro.Codec.encode(request),
             options,
             "orders.create",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/lookup",
             Inttegro.Codec.encode(request),
             options,
             "orders.lookup",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/update",
             Inttegro.Codec.encode(request),
             options,
             "orders.update",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec pay(Client.t(), Inttegro.PayOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def pay(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/pay",
             Inttegro.Codec.encode(request),
             options,
             "orders.pay",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec confirm_payment(Client.t(), Inttegro.ConfirmPaymentRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def confirm_payment(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/confirm_payment",
             Inttegro.Codec.encode(request),
             options,
             "orders.confirm_payment",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec request_confirmation(Client.t(), Inttegro.RequestConfirmationRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def request_confirmation(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/request_confirmation",
             Inttegro.Codec.encode(request),
             options,
             "orders.request_confirmation",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/cancel",
             Inttegro.Codec.encode(request),
             options,
             "orders.cancel",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec finalize(Client.t(), Inttegro.FinalizeOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def finalize(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/finalize",
             Inttegro.Codec.encode(request),
             options,
             "orders.finalize",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec complete(Client.t(), Inttegro.CompleteOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Order.t()} | {:error, Exception.t()}
  def complete(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/complete",
             Inttegro.Codec.encode(request),
             options,
             "orders.complete",
             "order",
             true
           ) do
      {:ok, Inttegro.Order.from_map(value)}
    end
  end

  @spec send_invoice(Client.t(), Inttegro.OrderDocumentDeliveryRequest.t(), keyword()) ::
          {:ok, Inttegro.OrderDocumentDeliveryResult.t()} | {:error, Exception.t()}
  def send_invoice(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/send_invoice",
             Inttegro.Codec.encode(request),
             options,
             "orders.send_invoice",
             nil,
             true
           ) do
      {:ok, Inttegro.OrderDocumentDeliveryResult.from_map(value)}
    end
  end

  @spec send_receipt(Client.t(), Inttegro.OrderDocumentDeliveryRequest.t(), keyword()) ::
          {:ok, Inttegro.OrderDocumentDeliveryResult.t()} | {:error, Exception.t()}
  def send_receipt(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/send_receipt",
             Inttegro.Codec.encode(request),
             options,
             "orders.send_receipt",
             nil,
             true
           ) do
      {:ok, Inttegro.OrderDocumentDeliveryResult.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageOrdersRequest.t(), keyword()) ::
          {:ok, Inttegro.OrderPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/page",
             Inttegro.Codec.encode(request),
             options,
             "orders.page",
             "page",
             true
           ) do
      {:ok, Inttegro.OrderPage.from_map(value)}
    end
  end

  @spec refund(Client.t(), Inttegro.CreateRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refund.t()} | {:error, Exception.t()}
  def refund(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/orders/refund",
             Inttegro.Codec.encode(request),
             options,
             "orders.refund",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refund.from_map(value)}
    end
  end
end

defmodule Inttegro.Otp do
  @moduledoc "Operations for Inttegro otp."
  alias Inttegro.Client

  @spec initiate(Client.t(), Inttegro.InitiateOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.OTPTransaction.t()} | {:error, Exception.t()}
  def initiate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/initiate",
             Inttegro.Codec.encode(request),
             options,
             "otp.initiate",
             "transaction",
             true
           ) do
      {:ok, Inttegro.OTPTransaction.from_map(value)}
    end
  end

  @spec verify(Client.t(), Inttegro.VerifyOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.OTPVerification.t()} | {:error, Exception.t()}
  def verify(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/verify",
             Inttegro.Codec.encode(request),
             options,
             "otp.verify",
             nil,
             true
           ) do
      {:ok, Inttegro.OTPVerification.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.OTPTransaction.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/otp/lookup",
             Inttegro.Codec.encode(request),
             options,
             "otp.lookup",
             "transaction",
             true
           ) do
      {:ok, Inttegro.OTPTransaction.from_map(value)}
    end
  end
end

defmodule Inttegro.PaymentMethods do
  @moduledoc "Operations for Inttegro payment methods."
  alias Inttegro.Client

  @spec tokenize(Client.t(), Inttegro.TokenizeMobileMoneyPaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def tokenize(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/tokenize",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.tokenize",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupPaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/lookup",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.lookup",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PaymentMethodPageRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethodPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/page",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.page",
             "page",
             true
           ) do
      {:ok, Inttegro.PaymentMethodPage.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/update",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.update",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec activate(Client.t(), Inttegro.ActivatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def activate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/activate",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.activate",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec deactivate(Client.t(), Inttegro.DisactivatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def deactivate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/disactivate",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.deactivate",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.ArchivePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/archive",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.archive",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec unarchive(Client.t(), Inttegro.UnarchivePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethod.t()} | {:error, Exception.t()}
  def unarchive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/unarchive",
             Inttegro.Codec.encode(request),
             options,
             "payment_methods.unarchive",
             "payment_method",
             true
           ) do
      {:ok, Inttegro.PaymentMethod.from_map(value)}
    end
  end

  @spec settings(Client.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethodSettings.t()} | {:error, Exception.t()}
  def settings(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payment_methods/settings",
             %{},
             options,
             "payment_methods.settings",
             "settings",
             true
           ) do
      {:ok, Inttegro.PaymentMethodSettings.from_map(value)}
    end
  end
end

defmodule Inttegro.Payouts do
  @moduledoc "Operations for Inttegro payouts."
  alias Inttegro.Client

  @spec schedule(Client.t(), Inttegro.SchedulePayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payout.t()} | {:error, Exception.t()}
  def schedule(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/schedule",
             Inttegro.Codec.encode(request),
             options,
             "payouts.schedule",
             "payout",
             true
           ) do
      {:ok, Inttegro.Payout.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupPayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payout.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/lookup",
             Inttegro.Codec.encode(request),
             options,
             "payouts.lookup",
             "payout",
             true
           ) do
      {:ok, Inttegro.Payout.from_map(value)}
    end
  end

  @spec set_destinations(Client.t(), Inttegro.SetPayoutDestinationsRequest.t(), keyword()) ::
          {:ok, Inttegro.PayoutSettingsMutation.t()} | {:error, Exception.t()}
  def set_destinations(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/set_destinations",
             Inttegro.Codec.encode(request),
             options,
             "payouts.set_destinations",
             "settings",
             true
           ) do
      {:ok, Inttegro.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec settings(Client.t(), keyword()) ::
          {:ok, Inttegro.PayoutSettingsLookup.t()} | {:error, Exception.t()}
  def settings(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/settings",
             %{},
             options,
             "payouts.settings",
             "settings",
             true
           ) do
      {:ok, Inttegro.PayoutSettingsLookup.from_map(value)}
    end
  end

  @spec disable(Client.t(), keyword()) ::
          {:ok, Inttegro.PayoutSettingsMutation.t()} | {:error, Exception.t()}
  def disable(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/disable",
             %{},
             options,
             "payouts.disable",
             "settings",
             true
           ) do
      {:ok, Inttegro.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec enable(Client.t(), keyword()) ::
          {:ok, Inttegro.PayoutSettingsMutation.t()} | {:error, Exception.t()}
  def enable(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/enable",
             %{},
             options,
             "payouts.enable",
             "settings",
             true
           ) do
      {:ok, Inttegro.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PagePayoutsRequest.t(), keyword()) ::
          {:ok, Inttegro.PayoutPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/page",
             Inttegro.Codec.encode(request),
             options,
             "payouts.page",
             "page",
             true
           ) do
      {:ok, Inttegro.PayoutPage.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelPayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payout.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/payouts/cancel",
             Inttegro.Codec.encode(request),
             options,
             "payouts.cancel",
             "payout",
             true
           ) do
      {:ok, Inttegro.Payout.from_map(value)}
    end
  end
end

defmodule Inttegro.Prices do
  @moduledoc "Operations for Inttegro prices."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CatalogPriceParams.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/create",
             Inttegro.Codec.encode(request),
             options,
             "prices.create",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/lookup",
             Inttegro.Codec.encode(request),
             options,
             "prices.lookup",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PricePageRequest.t(), keyword()) ::
          {:ok, Inttegro.PricePage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/page",
             Inttegro.Codec.encode(request),
             options,
             "prices.page",
             "page",
             true
           ) do
      {:ok, Inttegro.PricePage.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdatePriceRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/update",
             Inttegro.Codec.encode(request),
             options,
             "prices.update",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec activate(Client.t(), Inttegro.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def activate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/activate",
             Inttegro.Codec.encode(request),
             options,
             "prices.activate",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec deactivate(Client.t(), Inttegro.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def deactivate(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/deactivate",
             Inttegro.Codec.encode(request),
             options,
             "prices.deactivate",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/prices/archive",
             Inttegro.Codec.encode(request),
             options,
             "prices.archive",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end
end

defmodule Inttegro.Products do
  @moduledoc "Operations for Inttegro products."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/create",
             Inttegro.Codec.encode(request),
             options,
             "products.create",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec add_price(Client.t(), Inttegro.AddProductPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.CatalogPrice.t()} | {:error, Exception.t()}
  def add_price(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/add_price",
             Inttegro.Codec.encode(request),
             options,
             "products.add_price",
             "price",
             true
           ) do
      {:ok, Inttegro.CatalogPrice.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/lookup",
             Inttegro.Codec.encode(request),
             options,
             "products.lookup",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/update",
             Inttegro.Codec.encode(request),
             options,
             "products.update",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec publish(Client.t(), Inttegro.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def publish(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/publish",
             Inttegro.Codec.encode(request),
             options,
             "products.publish",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec unpublish(Client.t(), Inttegro.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def unpublish(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/unpublish",
             Inttegro.Codec.encode(request),
             options,
             "products.unpublish",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Product.t()} | {:error, Exception.t()}
  def archive(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/archive",
             Inttegro.Codec.encode(request),
             options,
             "products.archive",
             "product",
             true
           ) do
      {:ok, Inttegro.Product.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageProductsRequest.t(), keyword()) ::
          {:ok, Inttegro.ProductPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/products/page",
             Inttegro.Codec.encode(request),
             options,
             "products.page",
             "page",
             true
           ) do
      {:ok, Inttegro.ProductPage.from_map(value)}
    end
  end
end

defmodule Inttegro.PurchaseIntents do
  @moduledoc "Operations for Inttegro purchase intents."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreatePurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntent.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/purchase_intents/create",
             Inttegro.Codec.encode(request),
             options,
             "purchase_intents.create",
             "purchase_intent",
             true
           ) do
      {:ok, Inttegro.PurchaseIntent.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.UpdatePurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntent.t()} | {:error, Exception.t()}
  def update(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/purchase_intents/update",
             Inttegro.Codec.encode(request),
             options,
             "purchase_intents.update",
             "purchase_intent",
             true
           ) do
      {:ok, Inttegro.PurchaseIntent.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelPurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntent.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/purchase_intents/cancel",
             Inttegro.Codec.encode(request),
             options,
             "purchase_intents.cancel",
             "purchase_intent",
             true
           ) do
      {:ok, Inttegro.PurchaseIntent.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupPurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntent.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/purchase_intents/lookup",
             Inttegro.Codec.encode(request),
             options,
             "purchase_intents.lookup",
             "purchase_intent",
             true
           ) do
      {:ok, Inttegro.PurchaseIntent.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PagePurchaseIntentsRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntentPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/purchase_intents/page",
             Inttegro.Codec.encode(request),
             options,
             "purchase_intents.page",
             "page",
             true
           ) do
      {:ok, Inttegro.PurchaseIntentPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Refunds do
  @moduledoc "Operations for Inttegro refunds."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refund.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/create",
             Inttegro.Codec.encode(request),
             options,
             "refunds.create",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refund.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refund.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/cancel",
             Inttegro.Codec.encode(request),
             options,
             "refunds.cancel",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refund.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refund.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/lookup",
             Inttegro.Codec.encode(request),
             options,
             "refunds.lookup",
             "refund",
             true
           ) do
      {:ok, Inttegro.Refund.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageRefundsRequest.t(), keyword()) ::
          {:ok, Inttegro.RefundPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/refunds/page",
             Inttegro.Codec.encode(request),
             options,
             "refunds.page",
             "page",
             true
           ) do
      {:ok, Inttegro.RefundPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Schedules do
  @moduledoc "Operations for Inttegro schedules."
  alias Inttegro.Client

  @spec lookup(Client.t(), Inttegro.LookupScheduleRequest.t(), keyword()) ::
          {:ok, Inttegro.ScheduleDetail.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/schedules/lookup",
             Inttegro.Codec.encode(request),
             options,
             "schedules.lookup",
             "scheduled_chime",
             true
           ) do
      {:ok, Inttegro.ScheduleDetail.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelScheduleRequest.t(), keyword()) ::
          {:ok, Inttegro.ScheduleCancelDetail.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/schedules/cancel",
             Inttegro.Codec.encode(request),
             options,
             "schedules.cancel",
             "scheduled_chime",
             true
           ) do
      {:ok, Inttegro.ScheduleCancelDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Specifications do
  @moduledoc "Operations for Inttegro specifications."
  alias Inttegro.Client

  @spec countries(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.CountrySpecification.t()}}
          | {:error, Exception.t()}
  def countries(client, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/spec/countries",
             %{},
             options,
             "specifications.countries",
             "countries",
             false
           ) do
      {:ok,
       Map.new(value, fn {key, value} -> {key, Inttegro.CountrySpecification.from_map(value)} end)}
    end
  end
end

defmodule Inttegro.UploadRequests do
  @moduledoc "Operations for Inttegro upload requests."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.CreateUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequest.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/create",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.create",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequest.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.LookupUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequest.t()} | {:error, Exception.t()}
  def lookup(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/lookup",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.lookup",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequest.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PageUploadRequestsRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequestPage.t()} | {:error, Exception.t()}
  def page(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/page",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.page",
             "page",
             true
           ) do
      {:ok, Inttegro.UploadRequestPage.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.CancelUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequest.t()} | {:error, Exception.t()}
  def cancel(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/cancel",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.cancel",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequest.from_map(value)}
    end
  end

  @spec review(Client.t(), Inttegro.ReviewUploadRequestAttemptRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequest.t()} | {:error, Exception.t()}
  def review(client, request, options \\ []) do
    with {:ok, value} <-
           Client.request(
             client,
             "POST",
             "/upload_requests/review",
             Inttegro.Codec.encode(request),
             options,
             "upload_requests.review",
             "upload_request",
             true
           ) do
      {:ok, Inttegro.UploadRequest.from_map(value)}
    end
  end

  @spec fulfill(Client.t(), Inttegro.FulfillUploadRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadFulfillment.t()} | {:error, Exception.t()}
  def fulfill(client, request, options \\ []) do
    with {:ok, value} <-
           Client.fulfill_upload(
             client,
             "/upload_requests/upload",
             request,
             options,
             "upload_requests.fulfill"
           ) do
      {:ok, Inttegro.UploadFulfillment.from_map(value)}
    end
  end
end
