defmodule Inttegro.Docs do
  @moduledoc false

  @resource_docs %{
    "Apps" => """
    Creates and manages Inttegro applications.

    An application is the authorization and ownership boundary for commerce data. Use this API
    to inspect the application represented by the current secret key, create child applications,
    and update mutable application metadata. Child applications receive their own credentials and
    can be governed through an explicit parent-child relationship policy.
    """,
    "BalanceTransactions" => """
    Reads the immutable ledger entries behind an application's balance.

    Balance transactions explain why funds moved: for example, a captured payment adds funds and a
    refund removes them. Use this API for reconciliation and audit trails rather than deriving a
    balance from orders or payments. Page through every result when calculating totals.
    """,
    "Balances" => """
    Retrieves the application's current balances by currency and availability state.

    A balance is a point-in-time projection of the ledger. It distinguishes funds that are
    available, reserved, or otherwise unavailable. Use balance transactions when you need the
    history behind a value.
    """,
    "Broadcasts" => """
    Manages broadcasts sent through Inttegro Chimes.

    A broadcast applies one message to a larger recipient set and records its own delivery state.
    Use this API to inspect or cancel a broadcast after it has been created by a messaging flow.
    """,
    "Chimes" => """
    Sends and schedules transactional messages.

    Chimes deliver email or SMS content to inline recipients, saved customers, or template-defined
    recipients. A returned chime records rendering, safety, and transmission results; delivery may
    continue asynchronously after the API call succeeds.
    """,
    "Customers" => """
    Creates and maintains customer records owned by an Inttegro application.

    Customers connect contact information, addresses, orders, and saved payment methods. Use a
    stable customer ID for repeat relationships and keep application-specific identifiers in
    `custom_data` rather than overloading personal fields.
    """,
    "FileLinks" => """
    Creates controlled links for delivering files.

    File links can be time-limited, revocable, and protected by a token. Creating and administering
    links requires a secret key; opening a link uses its public ID and token and intentionally does
    not send the application's secret key.
    """,
    "FileReferences" => """
    Reconciles references between files and the resources that use them.

    References prevent backing objects from being removed while another resource still depends on
    them. Reconciliation is an administrative operation for repairing or verifying that ownership
    graph; it is not required for ordinary file downloads.
    """,
    "Files" => """
    Uploads files, reads their metadata, and delivers their original bytes.

    Inttegro stores file metadata separately from binary contents. Uploads move through processing
    and safety checks before becoming available. `create/3` accepts bytes, `lookup/3` returns
    metadata, and `contents/3` returns a `%Inttegro.Files.Download{}` without exposing storage
    provider credentials or object keys.

    ## Upload and download

        upload = %Inttegro.Files.CreateRequest{
          file_name: "receipt.pdf",
          bytes: File.read!("receipt.pdf"),
          purpose: "order_document"
        }

        {:ok, file} = Inttegro.Files.create(client, upload,
          idempotency_key: "receipt-order-123"
        )

        request = Inttegro.Files.ContentsRequest.new!(file_id: file.id)
        {:ok, download} = Inttegro.Files.contents(client, request)
        File.write!("downloaded-receipt.pdf", download.bytes)

    See the Files guide for lifecycle, delivery, and deletion behavior.
    """,
    "FinancialAccounts" => """
    Creates, connects, and controls the accounts an application uses to move money.

    A financial account represents a wallet, Ghana bank account, or Dosh account. The account owns
    its identity and verification state; push and pull are separate capabilities layered on top:

    * **Push** allows Inttegro to send payouts and other supported transfers to the account.
    * **Pull** allows supported payments to collect funds from the account. Enabling it records a
      mandate using the payer's real IP address and user agent.

    Use `create/3` when Inttegro should provision or manage the account and `connect/3` when the
    account already exists outside Inttegro. Both accept one of the concrete request types linked
    from `t:Inttegro.FinancialAccounts.CreateRequest.t/0`. Connecting an account does
    not imply that every money-movement capability is enabled; inspect `push_configuration`,
    `pull_configuration`, and `verification` on the returned account.

    ## Typical lifecycle

        create or connect
          -> complete any required verification
          -> enable push, pull, or both
          -> use the account for supported activity
          -> disable a capability or disconnect the account

    `disconnect/3` stops new activity without erasing the account's history. `reconnect/3` restores
    the relationship, but callers should still inspect which capabilities are active afterward.

    All state-changing calls accept request options as their last argument. Supply a stable
    `:idempotency_key` when retrying the same logical change after a timeout or connection failure.
    """,
    "Keys" => """
    Creates, rotates, inspects, and destroys application secret keys.

    A newly generated token is returned once. Store it immediately in a secret manager and never
    expose it to browser or mobile code. Lookup and usage operations return metadata, not the
    original token.
    """,
    "MessageTemplates" => """
    Manages reusable email and SMS templates for Chimes.

    Templates separate reviewed message content from recipient data supplied at send time. Render a
    preview before publishing, and treat safety results as part of the template lifecycle rather
    than as proof that a downstream carrier accepted a message.
    """,
    "Orders" => """
    Manages the complete commercial and payment lifecycle of an order.

    Orders bind customer information, immutable commercial terms, line items, totals, payment
    state, and invoice or receipt documents. Create an order, finalize it when its terms are ready,
    and then collect or record payment. Payment execution can require a later confirmation step;
    inspect the returned order and its next action instead of treating the first request as final.

    ## Looking up an order

        request = Inttegro.Orders.LookupRequest.new!(order_id: "or_...")

        case Inttegro.Orders.lookup(client, request) do
          {:ok, %Inttegro.Orders.Order{status: :completed} = order} ->
            order

          {:ok, order} ->
            {:pending, order.status}

          {:error, %Inttegro.Errors.APIError{} = error} ->
            {:retry_or_reject, error}
        end

    See the Orders and payments guide for creation, idempotency, confirmation, and hosted checkout.
    """,
    "Otp" => """
    Initiates, verifies, and inspects one-time passcode transactions.

    OTP delivery and verification are separate steps. Initiation returning successfully means the
    transaction was accepted, not that the recipient received or verified the code. Keep the
    returned transaction ID and submit the user-provided code through `verify/3`.
    """,
    "PaymentMethods" => """
    Saves and manages customer-owned payment methods.

    A payment method always belongs to its attached customer. Tokenization may start a verification
    flow; inspect the returned verification state before attempting a charge. The API returns
    masked or provider-safe details and never returns raw reusable credentials.
    """,
    "Payouts" => """
    Schedules and manages transfers from an application balance.

    Payout creation is asynchronous. The returned payout records its current state but does not by
    itself prove that the destination received funds. Use lookup and balance transactions for
    reconciliation, and reuse an idempotency key when retrying the same logical payout.
    """,
    "Prices" => """
    Manages reusable catalog prices.

    Prices express currency and integer minor-unit amounts and can be attached to products. Use a
    new price when commercial terms materially change so existing orders retain their original
    price history.
    """,
    "Products" => """
    Manages products and the prices, media, and attributes used to sell them.

    Products are reusable catalog records. Publishing controls availability to public purchasing
    surfaces; archiving retires a product without rewriting historical orders that reference it.
    """,
    "PurchaseIntents" => """
    Creates and manages public purchasing opportunities.

    A purchase intent describes what may be bought and can produce an order when a buyer accepts
    it. It is distinct from the resulting order: update or cancel the intent before acceptance, then
    use the Orders API for payment and fulfillment state.
    """,
    "Refunds" => """
    Returns funds from a paid order to its original payment method.

    Refunds are asynchronous financial records. Creating a refund validates the requested line
    items and amount, while the returned status describes processing progress. Look up the refund
    until it reaches a terminal state and reconcile it through balance transactions.
    """,
    "Schedules" => """
    Reads and cancels scheduled work created through Inttegro APIs.

    A schedule records when a supported operation should run and whether it is still actionable.
    Cancellation affects future execution; it does not reverse work that has already completed.
    """,
    "Specifications" => """
    Retrieves country-specific capabilities and financial institution directories.

    Use specifications to populate supported-country, bank, branch, and provider choices. Treat the
    response as authoritative and refreshable rather than hard-coding a directory into an
    integration.
    """,
    "UploadRequests" => """
    Creates secure upload requests that let another party supply a file.

    The application defines constraints and display information, then gives the uploader the
    request ID and token. Fulfilment does not use the application's secret key. Review and status
    operations let the application accept, reject, or cancel the resulting attempt.
    """
  }

  @namespace_docs Map.merge(@resource_docs, %{
                    "BankAccounts" =>
                      "Bank-account ownership, address, and country-specific account values shared by financial accounts and payment methods. Account details are typed without exposing provider credentials or treating one country's format as universal.",
                    "Checkout" =>
                      "Client-safe checkout projections and payment state returned by public checkout flows. These values contain only the information needed to render or reconcile payment collection and do not grant permission to mutate an order's commercial terms.",
                    "Errors" =>
                      "Structured API, transport, and decoding failures returned by the SDK.",
                    "Invoices" =>
                      "Invoice, receipt, document-format, and document-delivery values attached to orders. Document availability and delivery attempts are modeled separately so integrations can distinguish generation from successful recipient delivery.",
                    "Money" =>
                      "Currency and integer minor-unit amount values used throughout the Inttegro API.",
                    "Payments" =>
                      "Payment state, attempts, confirmations, and next actions attached to orders.",
                    "Shared" =>
                      "Cross-resource values shared by more than one Inttegro domain API. These types describe common ownership or supply relationships without assigning them to an unrelated resource namespace.",
                    "Wallets" =>
                      "Wallet configuration and mobile-money values shared by financial accounts. Capabilities and providers vary by country, so integrations should use returned configuration rather than hard-coded assumptions."
                  })

  @entity_docs %{
    "Inttegro.Apps.Application" => """
    An Inttegro application: the authorization and ownership boundary represented by a secret key.

    The struct contains public application metadata and, immediately after creation, may include a
    one-time secret-key result and relationship receipt. Later lookups do not reveal that token.
    """,
    "Inttegro.BalanceTransactions.BalanceTransaction" => """
    An immutable ledger entry that explains a movement in an application's balance.

    Its amount, type, and source references should be used for reconciliation. Do not mutate or
    replace transactions locally; fetch later pages when computing a complete total.
    """,
    "Inttegro.Customers.Customer" => """
    A customer owned by the authenticated application.

    Customer records hold contact and address information used by orders and saved payment methods.
    The customer ID is stable and should be stored alongside the corresponding user in your system.
    """,
    "Inttegro.Files.File" => """
    Metadata for a file owned by the authenticated application.

    This struct deliberately excludes the file bytes, storage-provider credentials, object keys,
    and idempotency internals. Retrieve original bytes with `Inttegro.Files.contents/3`.

    Files normally move from `:uploading` through `:processing` to `:available`. A `:failed` status
    may include `latest_error`; `:deleted` is a tombstone. `scan_status` records the safety scan
    independently of storage status, so check both before making a file public.

    Important fields include:

    * `id` — stable file identifier used by lookup, delivery, links, and references.
    * `purpose` — policy category applied when the file was accepted.
    * `status` and `scan_status` — storage lifecycle and safety state.
    * `content_type`, `size`, and `checksum_sha256` — representation metadata for verification.
    * `available_at` and `expires_at` — availability boundaries when present.
    """,
    "Inttegro.FinancialAccounts.FinancialAccount" => """
    A connected bank account or wallet that can supply or receive funds.

    Inspect its type-specific details, verification state, and push or pull configuration before
    offering an operation. Capabilities can change after reconnection or provider review.
    """,
    "Inttegro.MessageTemplates.MessageTemplate" => """
    A reusable, reviewable email or SMS template.

    Templates include content, declared variables, publication state, and safety results. Render a
    preview with representative variables before publishing or sending it.
    """,
    "Inttegro.Orders.Order" => """
    The authoritative record of a purchase and its payment and fulfillment state.

    An order combines immutable line items and totals with customer, invoice, payment, refund, and
    lifecycle information. Once finalized, commercial terms cannot be changed. Status changes can
    continue asynchronously, so use lookup or lifecycle notifications rather than trusting a
    browser redirect as proof of payment.
    """,
    "Inttegro.PaymentMethods.PaymentMethod" => """
    A customer-owned, reusable payment instrument represented by safe provider data.

    The struct identifies its customer, type, verification state, and masked type-specific details.
    It never contains the raw reusable credential. An inactive or archived method should not be
    offered for new payments.
    """,
    "Inttegro.Payouts.Payout" => """
    An asynchronous transfer from an application balance to configured destinations.

    The current status is a processing snapshot, not a bank receipt. Terminal failures include
    structured error information; successful payouts are reflected in balance transactions.
    """,
    "Inttegro.Products.Product" => """
    A reusable catalog item with descriptive attributes, media, shipment behavior, and prices.

    Product publication determines whether new purchasing surfaces may offer it. Existing order
    line items retain their captured commercial data even if the product later changes.
    """,
    "Inttegro.PurchaseIntents.PurchaseIntent" => """
    A public offer that describes what a buyer may purchase.

    Purchase intents may be shared before a customer is known. Acceptance creates an order; the
    resulting order, rather than this struct, becomes authoritative for payment and fulfillment.
    """,
    "Inttegro.Refunds.Refund" => """
    A request to return money from paid order line items to the original payment method.

    Refund processing is asynchronous. Inspect `status`, line items, amount, and error information,
    and reconcile completed refunds using balance transactions.
    """
  }

  @operation_docs %{
    {"Inttegro.FinancialAccounts", :create} => """
    Provisions a new wallet, Ghana bank account, or Dosh account managed through Inttegro.

    Use this operation when Inttegro should create or establish the financial account. To attach an
    account that already exists, use `connect/3` instead. Choose the concrete request struct that
    matches the account type;
    `t:Inttegro.FinancialAccounts.CreateRequest.t/0` links all supported variants.

    The returned `Inttegro.FinancialAccounts.FinancialAccount` is the current account snapshot.
    Creation does not guarantee that push or pull is ready: inspect `verification`,
    `push_configuration`, and `pull_configuration` before offering the account for money movement.

    ## Example: create a mobile-money wallet

        owner =
          Inttegro.FinancialAccounts.OwnerInput.new!(
            name: "Ama Mensah",
            address:
              Inttegro.FinancialAccounts.OwnerInputAddress.new!(country: "GH")
          )

        mobile_money =
          Inttegro.FinancialAccounts.WalletRequestWalletMobileMoney.new!(
            account_number: "0244000042",
            network: :mtn
          )

        wallet =
          Inttegro.FinancialAccounts.WalletRequestWallet.new!(
            type: :mobile_money,
            mobile_money: mobile_money
          )

        request =
          Inttegro.FinancialAccounts.WalletRequest.new!(
            currency: "ghs",
            label: "Primary collections wallet",
            owner: owner,
            reference: "wallet-primary-001",
            type: :wallet,
            wallet: wallet
          )

        Inttegro.FinancialAccounts.create(client, request,
          idempotency_key: "create-wallet-primary-001"
        )

    Returns `{:ok, account}` or `{:error, exception}`. Reuse the idempotency key only when retrying
    this same creation intent.
    """,
    {"Inttegro.FinancialAccounts", :connect} => """
    Attaches an existing wallet, Ghana bank account, or Dosh account to the application.

    Use `connect/3` for an account that already exists outside Inttegro. It records the relationship
    and may initiate provider verification. It does not silently grant every capability: read the
    returned account's verification, push, and pull configuration before using it.

    ## Example: connect a mobile-money wallet

        mobile_money =
          Inttegro.FinancialAccounts.WalletRequestWalletMobileMoney.new!(
            account_number: "0244000042",
            network: :mtn
          )

        wallet =
          Inttegro.FinancialAccounts.WalletRequestWallet.new!(
            type: :mobile_money,
            mobile_money: mobile_money
          )

        request =
          Inttegro.FinancialAccounts.WalletRequest.new!(
            currency: "ghs",
            label: "Operations wallet",
            owner: owner,
            reference: "operations-wallet-001",
            type: :wallet,
            wallet: wallet
          )

        Inttegro.FinancialAccounts.connect(client, request,
          idempotency_key: "connect-operations-wallet-001"
        )

    Returns `{:ok, account}` when the relationship is recorded, or `{:error, exception}` when the
    request is invalid, rejected by a provider, or cannot be completed. A successful response can
    still require later verification.
    """,
    {"Inttegro.FinancialAccounts", :lookup} => """
    Retrieves the current state of one financial account owned by the authenticated application.

    Lookup has no account-side effect. Use it after creation, connection, capability changes, or
    verification to refresh the authoritative state. In particular, inspect `verification`,
    `disconnected_at`, `push_configuration`, and `pull_configuration` instead of inferring readiness
    from an earlier request.

    ## Example

        request =
          Inttegro.FinancialAccounts.IDRequest.new!(account_id: "fa_...")

        case Inttegro.FinancialAccounts.lookup(client, request) do
          {:ok, %Inttegro.FinancialAccounts.FinancialAccount{} = account} ->
            {:ok, account}

          {:error, %Inttegro.Errors.APIError{status: 404}} ->
            {:error, :financial_account_not_found}

          {:error, error} ->
            {:error, error}
        end

    Returns `{:ok, account}` or `{:error, exception}`.
    """,
    {"Inttegro.FinancialAccounts", :page} => """
    Retrieves one numbered page of financial accounts owned by the authenticated application.

    `page_number` starts at `1`; `page_size` controls the maximum number of accounts returned. The
    response's `size` is the number returned in this page, not a total across the application. When
    building an inventory or calculating totals, continue requesting pages until a page is empty.

    ## Example

        request =
          Inttegro.FinancialAccounts.PageRequest.new!(
            page_number: 1,
            page_size: 100
          )

        with {:ok, page} <- Inttegro.FinancialAccounts.page(client, request) do
          Enum.each(page.accounts, &IO.inspect(&1.id))
        end

    Returns `{:ok, %Inttegro.FinancialAccounts.Page{}}` or
    `{:error, exception}`.
    """,
    {"Inttegro.FinancialAccounts", :update} => """
    Changes mutable metadata on an existing financial account.

    The request can update the label, description, external reference, owner details, or
    `custom_data`. It does not replace account credentials, change the account type, or enable push
    or pull. Use the dedicated capability operations for those state changes.

    ## Example

        request =
          Inttegro.FinancialAccounts.UpdateRequest.new!(
            account_id: "fa_...",
            label: "Treasury payouts",
            reference: "treasury-payouts-2026"
          )

        Inttegro.FinancialAccounts.update(client, request,
          idempotency_key: "rename-fa-treasury-payouts-2026"
        )

    Returns the updated account snapshot as `{:ok, account}` or an error tuple. A transport error
    leaves the outcome unknown, so retry the same intent with the same idempotency key.
    """,
    {"Inttegro.FinancialAccounts", :enable_push} => """
    Enables the account to receive payouts and other supported transfers from Inttegro.

    Push describes money moving **to** this account. Enabling it does not enable collections from
    the account; that is the separate pull capability. Provider support and verification can vary,
    so inspect `push_configuration` on the returned account rather than assuming the capability was
    available from the account type alone.

    ## Example

        request =
          Inttegro.FinancialAccounts.IDRequest.new!(account_id: "fa_...")

        Inttegro.FinancialAccounts.enable_push(client, request,
          idempotency_key: "enable-push-fa-001"
        )

    Returns `{:ok, account}` when the capability is enabled, or `{:error, exception}` when account
    state, verification, or provider policy prevents it.
    """,
    {"Inttegro.FinancialAccounts", :disable_push} => """
    Prevents the account from receiving new payouts and supported transfers.

    Disabling push does not reverse transfers already submitted. If the account is configured as a
    payout destination, the operation is rejected unless `unset_as_payout_destination` is `true`;
    this avoids silently leaving payout routing pointed at a disabled account.

    ## Example

        request =
          Inttegro.FinancialAccounts.DisableRequest.new!(
            account_id: "fa_...",
            unset_as_payout_destination: true
          )

        Inttegro.FinancialAccounts.disable_push(client, request,
          idempotency_key: "disable-push-fa-001"
        )

    Returns the updated account as `{:ok, account}` or `{:error, exception}`.
    """,
    {"Inttegro.FinancialAccounts", :enable_pull} => """
    Enables supported payments to collect funds from the account.

    Pull describes money moving **from** this account. Enabling it creates a mandate. Pass the real
    payer IP address and user agent captured by your application; Inttegro deliberately does not
    infer them from the server-to-server SDK request. Do not substitute your backend's network
    identity for the payer context.

    ## Example

        request =
          Inttegro.FinancialAccounts.EnablePullRequest.new!(
            account_id: "fa_...",
            ip_address: payer_ip_address,
            user_agent: payer_user_agent
          )

        Inttegro.FinancialAccounts.enable_pull(client, request,
          idempotency_key: "enable-pull-fa-001"
        )

    Returns `{:ok, account}` with a populated `pull_configuration` and mandate when enabled, or
    `{:error, exception}` when the account or supplied mandate context is ineligible.
    """,
    {"Inttegro.FinancialAccounts", :disable_pull} => """
    Stops new supported payments from pulling funds from the account.

    The operation removes the active pull configuration and its mandate. It does not cancel or
    reverse payment activity already submitted. Push remains independent and is unchanged.

    ## Example

        request =
          Inttegro.FinancialAccounts.IDRequest.new!(account_id: "fa_...")

        Inttegro.FinancialAccounts.disable_pull(client, request,
          idempotency_key: "disable-pull-fa-001"
        )

    Returns the updated account as `{:ok, account}` or `{:error, exception}`.
    """,
    {"Inttegro.FinancialAccounts", :disconnect} => """
    Disconnects the financial account from new Inttegro activity without deleting its history.

    Use this when the relationship should be suspended but historical payments, payouts, and audit
    records must remain referentially intact. If the account is currently a payout destination, set
    `unset_as_payout_destination: true` or the request is rejected.

    ## Example

        request =
          Inttegro.FinancialAccounts.DisableRequest.new!(
            account_id: "fa_...",
            unset_as_payout_destination: true
          )

        Inttegro.FinancialAccounts.disconnect(client, request,
          idempotency_key: "disconnect-fa-001"
        )

    Returns `{:ok, account}` with its disconnection state or `{:error, exception}`. Disconnecting
    does not reverse activity already submitted.
    """,
    {"Inttegro.FinancialAccounts", :reconnect} => """
    Reconnects a previously disconnected financial account.

    Reconnection restores the relationship but does not promise that every previous capability or
    verification remains active. Inspect the returned account and explicitly enable any required
    push or pull capability that is absent.

    ## Example

        request =
          Inttegro.FinancialAccounts.IDRequest.new!(account_id: "fa_...")

        case Inttegro.FinancialAccounts.reconnect(client, request,
               idempotency_key: "reconnect-fa-001"
             ) do
          {:ok, account} ->
            {:ok, account.push_configuration, account.pull_configuration}

          {:error, error} ->
            {:error, error}
        end

    Returns `{:ok, account}` or `{:error, exception}`.
    """
  }

  @spec resource_doc(module()) :: String.t()
  def resource_doc(module) do
    namespace = module |> Module.split() |> List.last()
    Map.fetch!(@resource_docs, namespace)
  end

  @spec namespace_doc(module()) :: String.t()
  def namespace_doc(module) do
    namespace = module |> Module.split() |> List.last()
    Map.fetch!(@namespace_docs, namespace)
  end

  @spec operation_doc(module(), atom()) :: String.t()
  def operation_doc(module, function) do
    Map.fetch!(@operation_docs, {inspect(module), function})
  end

  @spec module_doc(module(), :domain | :enum | :request | :union) :: String.t()
  def module_doc(module, kind) do
    module_name = inspect(module)
    namespace = module |> Module.split() |> Enum.at(1)
    name = module |> Module.split() |> List.last() |> humanize()
    namespace_doc = Map.fetch!(@namespace_docs, namespace)

    Map.get_lazy(@entity_docs, module_name, fn ->
      case kind do
        :enum ->
          """
          Values accepted for #{name} in the #{namespace} API.

          Prefer the documented atoms returned by `values/0`. The type also accepts strings so a
          newer server value can be preserved by an older SDK instead of failing during decoding.

          #{namespace_doc}
          """

        :request ->
          """
          Parameters for #{name} in the #{namespace} API.

          Build this struct with `new!/1` and pass it to the corresponding function on
          `Inttegro.#{namespace}`. Required keys are enforced immediately; optional values left as
          `nil` are omitted from the request sent to Inttegro.

          #{namespace_doc}
          """

        :union ->
          """
          The supported shapes for #{name} in the #{namespace} API.

          This union preserves the concrete, documented input or response variants represented by
          its member types. Follow the links in `t:t/0` to construct or inspect a specific shape.

          #{namespace_doc}
          """

        :domain ->
          """
          Represents #{name} data in the #{namespace} API.

          Inttegro decodes API responses into this struct. Required fields are always present;
          optional fields are `nil` when they do not apply or were not returned. Follow the linked
          types in `t:t/0` for nested domain values.

          #{namespace_doc}
          """
      end
    end)
  end

  @spec type_doc(module(), :domain | :enum | :request | :union) :: String.t()
  def type_doc(module, :enum) do
    "A #{module |> Module.split() |> List.last() |> humanize() |> String.downcase()} atom or an unknown wire value preserved as a string."
  end

  def type_doc(module, :request) do
    "A validated #{module |> Module.split() |> List.last() |> humanize() |> String.downcase()} request."
  end

  def type_doc(module, :union) do
    "One of the documented #{module |> Module.split() |> List.last() |> humanize() |> String.downcase()} variants."
  end

  def type_doc(module, :domain) do
    "The decoded #{module |> Module.split() |> List.last() |> humanize() |> String.downcase()} value."
  end

  @spec constructor_doc(module()) :: String.t()
  def constructor_doc(module) do
    "Builds a `#{inspect(module)}` and raises `KeyError` when a required field is missing."
  end

  @spec enum_values_doc(module()) :: String.t()
  def enum_values_doc(module) do
    "Returns the documented `#{inspect(module)}` atoms known by this SDK version."
  end

  defp humanize(name) do
    name
    |> String.replace(~r/([a-z0-9])([A-Z])/, "\\1 \\2")
    |> String.replace("OTP", "OTP")
  end
end
