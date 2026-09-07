defmodule Inttegro.PublicAPITest do
  use ExUnit.Case, async: true

  test "client and typed values are available" do
    client = Inttegro.Client.new!("sk_test_example")
    assert %Inttegro.Client{} = client

    assert %Inttegro.AmountParams{value: 5_000} =
             Inttegro.AmountParams.new!(currency: :ghs, value: 5_000)
  end

  test "wire envelopes are unwrapped into domain values" do
    Req.Test.stub(__MODULE__, fn conn ->
      Req.Test.json(conn, %{
        "app" => %{"id" => "app_test", "name" => "Test", "created_at" => "2026-09-07T00:00:00Z"}
      })
    end)

    http = Req.new(base_url: "https://api.inttegro.test", plug: {Req.Test, __MODULE__})
    client = Inttegro.Client.new!("sk_test_example", http: http)
    assert {:ok, %Inttegro.Application{id: "app_test"}} = Inttegro.Apps.lookup(client)
  end

  test "error reports encode with the shared camel-case schema" do
    report = %Inttegro.ErrorReport{
      schema_version: 1,
      event_id: "event_test",
      occurred_at: "2026-09-07T00:00:00Z",
      severity: "error",
      category: "api",
      operation: "orders.lookup",
      sdk: %Inttegro.SDKReportContext{language: "elixir", version: "0.1.0"},
      http: %Inttegro.HTTPReportContext{
        method: "POST",
        route: "/orders/lookup",
        server_address: "https://api.inttegro.com",
        status_code: 500,
        request_id: "request_test",
        duration_ms: 12
      },
      api_error: %Inttegro.APIErrorReportContext{
        type: "api",
        code: "internal_error",
        fix_code: nil
      },
      trace: nil,
      exception_type: "Inttegro.ApiError",
      fingerprint: "inttegro:elixir:orders.lookup:api:500"
    }

    payload = Jason.encode!(report)
    assert payload =~ ~s("schemaVersion":1)
    assert payload =~ ~s("serverAddress":"https://api.inttegro.com")
    refute payload =~ "schema_version"
  end
end
