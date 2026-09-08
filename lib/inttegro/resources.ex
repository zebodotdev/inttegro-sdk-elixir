# Typed Inttegro API resources.

defmodule Inttegro.Apps do
  @moduledoc "Operations for Inttegro apps."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Apps.CreateApplicationRequest.t(), keyword()) ::
          {:ok, Inttegro.Apps.Application.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Apps.Application.from_map(value)}
    end
  end

  @spec lookup(Client.t(), keyword()) ::
          {:ok, Inttegro.Apps.Application.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Apps.Application.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Apps.UpdateApplicationRequest.t(), keyword()) ::
          {:ok, Inttegro.Apps.Application.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Apps.Application.from_map(value)}
    end
  end
end

defmodule Inttegro.BalanceTransactions do
  @moduledoc "Operations for Inttegro balance transactions."
  alias Inttegro.Client

  @spec lookup(
          Client.t(),
          Inttegro.BalanceTransactions.LookupBalanceTransactionRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.BalanceTransactions.BalanceTransaction.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.BalanceTransactions.BalanceTransaction.from_map(value)}
    end
  end

  @spec page(
          Client.t(),
          Inttegro.BalanceTransactions.PageBalanceTransactionsRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.BalanceTransactions.BalanceTransactionPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.BalanceTransactions.BalanceTransactionPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Balances do
  @moduledoc "Operations for Inttegro balances."
  alias Inttegro.Client

  @spec get(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.Balances.CurrencyBalanceSnapshot.t()}}
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
         {key, Inttegro.Balances.CurrencyBalanceSnapshot.from_map(value)}
       end)}
    end
  end
end

defmodule Inttegro.Broadcasts do
  @moduledoc "Operations for Inttegro broadcasts."
  alias Inttegro.Client

  @spec lookup(Client.t(), Inttegro.Broadcasts.LookupBroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.Broadcasts.BroadcastDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Broadcasts.BroadcastDetail.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.Broadcasts.CancelBroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.Broadcasts.BroadcastDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Broadcasts.BroadcastDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Chimes do
  @moduledoc "Operations for Inttegro chimes."
  alias Inttegro.Client

  @spec send(Client.t(), Inttegro.Chimes.SendChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.Chimes.Chime.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Chimes.Chime.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Chimes.LookupChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.Chimes.Chime.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Chimes.Chime.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Chimes.PageChimesRequest.t(), keyword()) ::
          {:ok, Inttegro.Chimes.ChimePage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Chimes.ChimePage.from_map(value)}
    end
  end

  @spec schedule(Client.t(), Inttegro.Chimes.ScheduleChimeRequest.t(), keyword()) ::
          {:ok, Inttegro.Chimes.ScheduleCreationDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Chimes.ScheduleCreationDetail.from_map(value)}
    end
  end

  @spec broadcast(Client.t(), Inttegro.Chimes.BroadcastRequest.t(), keyword()) ::
          {:ok, Inttegro.Chimes.BroadcastCreationDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Chimes.BroadcastCreationDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Customers do
  @moduledoc "Operations for Inttegro customers."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Customers.CreateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Customers.LookupCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Customers.UpdateCustomerRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.Customer.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Customers.Customer.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Customers.PageCustomersRequest.t(), keyword()) ::
          {:ok, Inttegro.Customers.CustomerPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Customers.CustomerPage.from_map(value)}
    end
  end
end

defmodule Inttegro.FileLinks do
  @moduledoc "Operations for Inttegro file links."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.FileLinks.CreateFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLinkCreation.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FileLinks.FileLinkCreation.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.FileLinks.LookupFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLink.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FileLinks.FileLink.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.FileLinks.PageFileLinksRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLinkPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FileLinks.FileLinkPage.from_map(value)}
    end
  end

  @spec revoke(Client.t(), Inttegro.FileLinks.RevokeFileLinkRequest.t(), keyword()) ::
          {:ok, Inttegro.FileLinks.FileLink.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FileLinks.FileLink.from_map(value)}
    end
  end

  @spec open(Client.t(), Inttegro.FileLinks.OpenRequest.t()) ::
          {:ok, Inttegro.Files.Download.t()} | {:error, Exception.t()}
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

defmodule Inttegro.Files do
  @moduledoc "Operations for Inttegro files."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Files.CreateRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
  def create(client, request, options \\ []) do
    with {:ok, value} <-
           Client.upload_file(client, "/files/create", request, options, "files.create", "file") do
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Files.LookupFileRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Files.PageFilesRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.FilePage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Files.FilePage.from_map(value)}
    end
  end

  @spec contents(Client.t(), Inttegro.Files.FileContentsRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.Download.t()} | {:error, Exception.t()}
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

  @spec delete(Client.t(), Inttegro.Files.DeleteFileRequest.t(), keyword()) ::
          {:ok, Inttegro.Files.File.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Files.File.from_map(value)}
    end
  end
end

defmodule Inttegro.FinancialAccounts do
  @moduledoc "Operations for Inttegro financial accounts."
  alias Inttegro.Client

  @spec create(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountCreateRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.FinancialAccounts.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.FinancialAccounts.FinancialAccountPageRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccountPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccountPage.from_map(value)}
    end
  end

  @spec connect(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountCreateRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec update(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountUpdateRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec enable_push(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountIDRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec disable_push(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountDisableRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec disconnect(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountDisableRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec reconnect(Client.t(), Inttegro.FinancialAccounts.FinancialAccountIDRequest.t(), keyword()) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec enable_pull(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountEnablePullRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end

  @spec disable_pull(
          Client.t(),
          Inttegro.FinancialAccounts.FinancialAccountIDRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.FinancialAccounts.FinancialAccount.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.FinancialAccounts.FinancialAccount.from_map(value)}
    end
  end
end

defmodule Inttegro.Keys do
  @moduledoc "Operations for Inttegro keys."
  alias Inttegro.Client

  @spec generate(Client.t(), Inttegro.Keys.GenerateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.GeneratedSecretKey.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.GeneratedSecretKey.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Keys.PageSecretKeysRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKeyPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.SecretKeyPage.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Keys.LookupSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Keys.UpdateSecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @spec destroy(Client.t(), Inttegro.Keys.DestroySecretKeyRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKey.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.SecretKey.from_map(value)}
    end
  end

  @spec usage(Client.t(), Inttegro.Keys.SecretKeyUsageRequest.t(), keyword()) ::
          {:ok, Inttegro.Keys.SecretKeyUsage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Keys.SecretKeyUsage.from_map(value)}
    end
  end
end

defmodule Inttegro.MessageTemplates do
  @moduledoc "Operations for Inttegro message templates."
  alias Inttegro.Client

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

defmodule Inttegro.Orders do
  @moduledoc "Operations for Inttegro orders."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Orders.CreateOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Orders.LookupOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Orders.UpdateOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec pay(Client.t(), Inttegro.Orders.PayOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec confirm_payment(Client.t(), Inttegro.Orders.ConfirmPaymentRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec request_confirmation(
          Client.t(),
          Inttegro.Orders.RequestConfirmationRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.Orders.CancelOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec finalize(Client.t(), Inttegro.Orders.FinalizeOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec complete(Client.t(), Inttegro.Orders.CompleteOrderRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.Order.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.Order.from_map(value)}
    end
  end

  @spec send_invoice(Client.t(), Inttegro.Orders.OrderDocumentDeliveryRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.OrderDocumentDeliveryResult.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.OrderDocumentDeliveryResult.from_map(value)}
    end
  end

  @spec send_receipt(Client.t(), Inttegro.Orders.OrderDocumentDeliveryRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.OrderDocumentDeliveryResult.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.OrderDocumentDeliveryResult.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Orders.PageOrdersRequest.t(), keyword()) ::
          {:ok, Inttegro.Orders.OrderPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Orders.OrderPage.from_map(value)}
    end
  end

  @spec refund(Client.t(), Inttegro.Refunds.CreateRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end
end

defmodule Inttegro.Otp do
  @moduledoc "Operations for Inttegro otp."
  alias Inttegro.Client

  @spec initiate(Client.t(), Inttegro.Otp.InitiateOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.OTPTransaction.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Otp.OTPTransaction.from_map(value)}
    end
  end

  @spec verify(Client.t(), Inttegro.Otp.VerifyOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.OTPVerification.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Otp.OTPVerification.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Otp.LookupOTPRequest.t(), keyword()) ::
          {:ok, Inttegro.Otp.OTPTransaction.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Otp.OTPTransaction.from_map(value)}
    end
  end
end

defmodule Inttegro.PaymentMethods do
  @moduledoc "Operations for Inttegro payment methods."
  alias Inttegro.Client

  @spec tokenize(
          Client.t(),
          Inttegro.PaymentMethods.TokenizeMobileMoneyPaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.PaymentMethods.LookupPaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PaymentMethods.PaymentMethodPageRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethodPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethodPage.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.PaymentMethods.UpdatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec activate(Client.t(), Inttegro.PaymentMethods.ActivatePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec deactivate(
          Client.t(),
          Inttegro.PaymentMethods.DisactivatePaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.PaymentMethods.ArchivePaymentMethodRequest.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec unarchive(
          Client.t(),
          Inttegro.PaymentMethods.UnarchivePaymentMethodRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethod.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethod.from_map(value)}
    end
  end

  @spec settings(Client.t(), keyword()) ::
          {:ok, Inttegro.PaymentMethods.PaymentMethodSettings.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PaymentMethods.PaymentMethodSettings.from_map(value)}
    end
  end
end

defmodule Inttegro.Payouts do
  @moduledoc "Operations for Inttegro payouts."
  alias Inttegro.Client

  @spec schedule(Client.t(), Inttegro.Payouts.SchedulePayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payouts.Payout.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.Payout.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Payouts.LookupPayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payouts.Payout.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.Payout.from_map(value)}
    end
  end

  @spec set_destinations(Client.t(), Inttegro.Payouts.SetPayoutDestinationsRequest.t(), keyword()) ::
          {:ok, Inttegro.Payouts.PayoutSettingsMutation.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec settings(Client.t(), keyword()) ::
          {:ok, Inttegro.Payouts.PayoutSettingsLookup.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.PayoutSettingsLookup.from_map(value)}
    end
  end

  @spec disable(Client.t(), keyword()) ::
          {:ok, Inttegro.Payouts.PayoutSettingsMutation.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec enable(Client.t(), keyword()) ::
          {:ok, Inttegro.Payouts.PayoutSettingsMutation.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.PayoutSettingsMutation.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Payouts.PagePayoutsRequest.t(), keyword()) ::
          {:ok, Inttegro.Payouts.PayoutPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.PayoutPage.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.Payouts.CancelPayoutRequest.t(), keyword()) ::
          {:ok, Inttegro.Payouts.Payout.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Payouts.Payout.from_map(value)}
    end
  end
end

defmodule Inttegro.Prices do
  @moduledoc "Operations for Inttegro prices."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Prices.CatalogPriceParams.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Prices.LookupPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Prices.PricePageRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.PricePage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.PricePage.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Prices.UpdatePriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec activate(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec deactivate(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.Prices.PriceActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end
end

defmodule Inttegro.Products do
  @moduledoc "Operations for Inttegro products."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Products.CreateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec add_price(Client.t(), Inttegro.Products.AddProductPriceRequest.t(), keyword()) ::
          {:ok, Inttegro.Prices.CatalogPrice.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Prices.CatalogPrice.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Products.LookupProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.Products.UpdateProductRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec publish(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec unpublish(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec archive(Client.t(), Inttegro.Products.ProductActionRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.Product.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.Product.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Products.PageProductsRequest.t(), keyword()) ::
          {:ok, Inttegro.Products.ProductPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Products.ProductPage.from_map(value)}
    end
  end
end

defmodule Inttegro.PurchaseIntents do
  @moduledoc "Operations for Inttegro purchase intents."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.PurchaseIntents.CreatePurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntents.PurchaseIntent.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PurchaseIntents.PurchaseIntent.from_map(value)}
    end
  end

  @spec update(Client.t(), Inttegro.PurchaseIntents.UpdatePurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntents.PurchaseIntent.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PurchaseIntents.PurchaseIntent.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.PurchaseIntents.CancelPurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntents.PurchaseIntent.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PurchaseIntents.PurchaseIntent.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.PurchaseIntents.LookupPurchaseIntentRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntents.PurchaseIntent.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PurchaseIntents.PurchaseIntent.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.PurchaseIntents.PagePurchaseIntentsRequest.t(), keyword()) ::
          {:ok, Inttegro.PurchaseIntents.PurchaseIntentPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.PurchaseIntents.PurchaseIntentPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Refunds do
  @moduledoc "Operations for Inttegro refunds."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.Refunds.CreateRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.Refunds.CancelRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.Refunds.LookupRefundRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.Refund.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Refunds.Refund.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.Refunds.PageRefundsRequest.t(), keyword()) ::
          {:ok, Inttegro.Refunds.RefundPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Refunds.RefundPage.from_map(value)}
    end
  end
end

defmodule Inttegro.Schedules do
  @moduledoc "Operations for Inttegro schedules."
  alias Inttegro.Client

  @spec lookup(Client.t(), Inttegro.Schedules.LookupScheduleRequest.t(), keyword()) ::
          {:ok, Inttegro.Schedules.ScheduleDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Schedules.ScheduleDetail.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.Schedules.CancelScheduleRequest.t(), keyword()) ::
          {:ok, Inttegro.Schedules.ScheduleCancelDetail.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.Schedules.ScheduleCancelDetail.from_map(value)}
    end
  end
end

defmodule Inttegro.Specifications do
  @moduledoc "Operations for Inttegro specifications."
  alias Inttegro.Client

  @spec countries(Client.t(), keyword()) ::
          {:ok, %{optional(String.t()) => Inttegro.Specifications.CountrySpecification.t()}}
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
       Map.new(value, fn {key, value} ->
         {key, Inttegro.Specifications.CountrySpecification.from_map(value)}
       end)}
    end
  end
end

defmodule Inttegro.UploadRequests do
  @moduledoc "Operations for Inttegro upload requests."
  alias Inttegro.Client

  @spec create(Client.t(), Inttegro.UploadRequests.CreateUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @spec lookup(Client.t(), Inttegro.UploadRequests.LookupUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @spec page(Client.t(), Inttegro.UploadRequests.PageUploadRequestsRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequestPage.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.UploadRequests.UploadRequestPage.from_map(value)}
    end
  end

  @spec cancel(Client.t(), Inttegro.UploadRequests.CancelUploadRequestRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @spec review(
          Client.t(),
          Inttegro.UploadRequests.ReviewUploadRequestAttemptRequest.t(),
          keyword()
        ) ::
          {:ok, Inttegro.UploadRequests.UploadRequest.t()} | {:error, Exception.t()}
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
      {:ok, Inttegro.UploadRequests.UploadRequest.from_map(value)}
    end
  end

  @spec fulfill(Client.t(), Inttegro.UploadRequests.FulfillRequest.t(), keyword()) ::
          {:ok, Inttegro.UploadRequests.UploadFulfillment.t()} | {:error, Exception.t()}
  def fulfill(client, request, options \\ []) do
    with {:ok, value} <-
           Client.fulfill_upload(
             client,
             "/upload_requests/upload",
             request,
             options,
             "upload_requests.fulfill"
           ) do
      {:ok, Inttegro.UploadRequests.UploadFulfillment.from_map(value)}
    end
  end
end
