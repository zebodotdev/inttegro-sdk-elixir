defmodule Inttegro.PublicAPITest do
  use ExUnit.Case, async: true

  test "client and typed values are available" do
    client = Inttegro.Client.new!("sk_test_example")
    assert %Inttegro.Client{} = client

    assert %Inttegro.Money.AmountParams{value: 5_000} =
             Inttegro.Money.AmountParams.new!(currency: :ghs, value: 5_000)
  end

  test "wire envelopes are unwrapped into domain values" do
    Req.Test.stub(__MODULE__, fn conn ->
      Req.Test.json(conn, %{
        "app" => %{"id" => "app_test", "name" => "Test", "created_at" => "2026-09-07T00:00:00Z"}
      })
    end)

    http = Req.new(base_url: "https://api.inttegro.test", plug: {Req.Test, __MODULE__})
    client = Inttegro.Client.new!("sk_test_example", http: http)
    assert {:ok, %Inttegro.Apps.Application{id: "app_test"}} = Inttegro.Apps.lookup(client)
  end

  test "error reports encode with the shared camel-case schema" do
    report = %Inttegro.Telemetry.ErrorReport{
      schema_version: 1,
      event_id: "event_test",
      occurred_at: "2026-09-07T00:00:00Z",
      severity: "error",
      category: "api",
      operation: "orders.lookup",
      sdk: %Inttegro.Telemetry.SDKContext{language: "elixir", version: "0.2.0"},
      http: %Inttegro.Telemetry.HTTPContext{
        method: "POST",
        route: "/orders/lookup",
        server_address: "https://api.inttegro.com",
        status_code: 500,
        request_id: "request_test",
        duration_ms: 12
      },
      api_error: %Inttegro.Telemetry.APIErrorContext{
        type: "api",
        code: "internal_error",
        fix_code: nil
      },
      trace: nil,
      exception_type: "Inttegro.Errors.APIError",
      fingerprint: "inttegro:elixir:orders.lookup:api:500"
    }

    payload = Jason.encode!(report)
    assert payload =~ ~s("schemaVersion":1)
    assert payload =~ ~s("serverAddress":"https://api.inttegro.com")
    refute payload =~ "schema_version"
  end

  test "domain values live in their owning namespaces" do
    assert Code.ensure_loaded?(Inttegro.Files.File)
    assert Code.ensure_loaded?(Inttegro.Orders.Order)
    assert Code.ensure_loaded?(Inttegro.PaymentMethods.PaymentMethod)

    refute Code.ensure_loaded?(Inttegro.File)
    refute Code.ensure_loaded?(Inttegro.Order)
    refute Code.ensure_loaded?(Inttegro.PaymentMethod)
  end

  test "public reference modules contain meaningful documentation" do
    {:ok, modules} = :application.get_key(:inttegro, :modules)

    modules =
      Enum.filter(modules, fn module ->
        String.starts_with?(inspect(module), "Inttegro.") and
          module not in [Inttegro.Codec, Inttegro.Docs]
      end)

    Enum.each(modules, fn module ->
      assert {:docs_v1, _, :elixir, _, %{"en" => module_doc}, _, _} = Code.fetch_docs(module)
      assert String.length(module_doc) >= 80, "thin documentation for #{inspect(module)}"
      refute module_doc =~ "Typed Inttegro"
      refute module_doc =~ "Operations for Inttegro"
    end)

    file_doc = module_doc(Inttegro.Files.File)
    assert file_doc =~ "storage-provider credentials"
    assert file_doc =~ "scan_status"
    assert file_doc =~ "Inttegro.Files.contents/3"
  end

  test "the root namespace contains only domain entry points" do
    {:ok, modules} = :application.get_key(:inttegro, :modules)

    root_modules =
      modules
      |> Enum.filter(&(Module.split(&1) |> length() == 2))
      |> Enum.reject(&(&1 in [Inttegro.Codec, Inttegro.Docs]))

    allowed = [
      Inttegro.Apps,
      Inttegro.BalanceTransactions,
      Inttegro.Balances,
      Inttegro.BankAccounts,
      Inttegro.Broadcasts,
      Inttegro.Checkout,
      Inttegro.Chimes,
      Inttegro.Client,
      Inttegro.Customers,
      Inttegro.Errors,
      Inttegro.FileLinks,
      Inttegro.FileReferences,
      Inttegro.Files,
      Inttegro.FinancialAccounts,
      Inttegro.Invoices,
      Inttegro.Keys,
      Inttegro.MessageTemplates,
      Inttegro.Money,
      Inttegro.Orders,
      Inttegro.Otp,
      Inttegro.PaymentMethods,
      Inttegro.Payments,
      Inttegro.Payouts,
      Inttegro.Prices,
      Inttegro.Products,
      Inttegro.PurchaseIntents,
      Inttegro.Refunds,
      Inttegro.Schedules,
      Inttegro.Shared,
      Inttegro.Specifications,
      Inttegro.Telemetry,
      Inttegro.UploadRequests,
      Inttegro.Wallets
    ]

    assert Enum.sort(root_modules) == Enum.sort(allowed)
  end

  test "every resource operation has an ExDoc entry" do
    resource_modules = [
      Inttegro.Apps,
      Inttegro.BalanceTransactions,
      Inttegro.Balances,
      Inttegro.Broadcasts,
      Inttegro.Chimes,
      Inttegro.Customers,
      Inttegro.FileLinks,
      Inttegro.FileReferences,
      Inttegro.Files,
      Inttegro.FinancialAccounts,
      Inttegro.Keys,
      Inttegro.MessageTemplates,
      Inttegro.Orders,
      Inttegro.Otp,
      Inttegro.PaymentMethods,
      Inttegro.Payouts,
      Inttegro.Prices,
      Inttegro.Products,
      Inttegro.PurchaseIntents,
      Inttegro.Refunds,
      Inttegro.Schedules,
      Inttegro.Specifications,
      Inttegro.UploadRequests
    ]

    Enum.each(resource_modules, fn module ->
      assert {:docs_v1, _, :elixir, _, %{"en" => _}, _, entries} = Code.fetch_docs(module)

      missing =
        for {{:function, name, arity}, _, _, :none, _} <- entries,
            do: "#{name}/#{arity}"

      assert missing == [], "undocumented functions in #{inspect(module)}: #{inspect(missing)}"
    end)
  end

  test "financial account documentation explains workflows and real inputs" do
    module_doc = module_doc(Inttegro.FinancialAccounts)
    assert module_doc =~ "Push"
    assert module_doc =~ "Pull"
    assert module_doc =~ "Typical lifecycle"

    assert {:docs_v1, _, :elixir, _, _, _, entries} =
             Code.fetch_docs(Inttegro.FinancialAccounts)

    operation_docs =
      for {{:function, name, _arity}, _, _, %{"en" => doc}, _} <- entries,
          into: %{},
          do: {name, doc}

    expected_operations = [
      :connect,
      :create,
      :disable_pull,
      :disable_push,
      :disconnect,
      :enable_pull,
      :enable_push,
      :lookup,
      :page,
      :reconnect,
      :update
    ]

    Enum.each(expected_operations, fn operation ->
      doc = Map.fetch!(operation_docs, operation)
      assert String.length(doc) >= 500, "thin documentation for #{operation}"
      refute doc =~ "request_attributes"
      refute doc =~ "concrete_request"
    end)

    assert operation_docs.enable_pull =~ ~r/real\s+payer IP address/
    assert operation_docs.disable_push =~ "unset_as_payout_destination"
    assert operation_docs.connect =~ "FinancialAccountWalletRequest"
  end

  defp module_doc(module) do
    {:docs_v1, _, :elixir, _, %{"en" => module_doc}, _, _} = Code.fetch_docs(module)
    module_doc
  end
end
