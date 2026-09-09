#!/usr/bin/env ruby
# frozen_string_literal: true

# Moves freshly generated 0.1-style modules into the domain namespaces used by
# the public 0.2 API. Run this before enrich_docs.rb and split_sources.rb.

ROOT = File.expand_path("..", __dir__)
GENERATED = File.join(ROOT, "lib/inttegro/generated.ex")
RESOURCES = File.join(ROOT, "lib/inttegro/resources.ex")

SERVICES = %w[
  Apps BalanceTransactions Balances Broadcasts Chimes Customers FileLinks
  FileReferences Files FinancialAccounts Keys MessageTemplates Orders Otp
  PaymentMethods Payouts Prices Products PurchaseIntents Refunds Schedules
  Specifications UploadRequests
].freeze

CLIENT_TYPES = {
  "RequestOptions" => "Inttegro.Client.RequestOptions",
  "FileDownload" => "Inttegro.Files.Download",
  "CreateFileRequest" => "Inttegro.Files.CreateRequest",
  "FulfillUploadRequest" => "Inttegro.UploadRequests.FulfillRequest",
  "OpenFileLinkRequest" => "Inttegro.FileLinks.OpenRequest",
  "SDKReportContext" => "Inttegro.Telemetry.SDKContext",
  "HTTPReportContext" => "Inttegro.Telemetry.HTTPContext",
  "APIErrorReportContext" => "Inttegro.Telemetry.APIErrorContext",
  "TraceReportContext" => "Inttegro.Telemetry.TraceContext",
  "ErrorReport" => "Inttegro.Telemetry.ErrorReport",
  "ApiError" => "Inttegro.Errors.APIError",
  "TransportError" => "Inttegro.Errors.TransportError",
  "DecodingError" => "Inttegro.Errors.DecodingError"
}.freeze

SPECIAL = {
  "AddressInput" => "Orders",
  "Amount" => "Money",
  "AmountParams" => "Money",
  "Currency" => "Money",
  "DeliveryChannel" => "Invoices",
  "Error" => "Errors",
  "GhanaBankAccount" => "BankAccounts",
  "LookupBalancesRequest" => "Balances",
  "MobileMoneyNetwork" => "PaymentMethods",
  "PublicFileStorage" => "Files",
  "ResourceSupply" => "Shared"
}.freeze

PATTERNS = [
  [/\AOrderDocument(?!Delivery(?:Request|Result))|\AOrderInvoice/, "Invoices"],
  [/\A(?:Create|Update)?Order|\AOrder/, "Orders"],
  [/\A(?:Create)?Refund|\ARefund/, "Refunds"],
  [/\AApplication/, "Apps"],
  [/FileReference/, "FileReferences"],
  [/FileLink/, "FileLinks"],
  [/FinancialAccount|FinancialInstitution|PullPush/, "FinancialAccounts"],
  [/PaymentMethod/, "PaymentMethods"],
  [/PurchaseIntent/, "PurchaseIntents"],
  [/BalanceTransaction/, "BalanceTransactions"],
  [/MessageTemplate|ContentSafety|RenderedEmail|RenderedSMS/, "MessageTemplates"],
  [/UploadRequest|UploadReview/, "UploadRequests"],
  [/SecretKey/, "Keys"],
  [/Checkout/, "Checkout"],
  [/Invoice/, "Invoices"],
  [/\AApp/, "Apps"],
  [/Broadcast/, "Broadcasts"],
  [/Chime/, "Chimes"],
  [/Customer/, "Customers"],
  [/\AFile/, "Files"],
  [/BankAccount/, "BankAccounts"],
  [/\ABalance|CurrencyBalance/, "Balances"],
  [/LineItem|Billing|Shipping|Fee/, "Orders"],
  [/OTP/, "Otp"],
  [/\APayment/, "Payments"],
  [/Payout/, "Payouts"],
  [/CatalogPrice|\APrice/, "Prices"],
  [/Product/, "Products"],
  [/Schedule/, "Schedules"],
  [/Country/, "Specifications"],
  [/Wallet/, "Wallets"]
].freeze

def blocks(source, pattern)
  starts = source.enum_for(:scan, pattern).map do
    [Regexp.last_match.begin(0), Regexp.last_match(1)]
  end
  starts.each_with_index.map do |(offset, name), index|
    finish = index + 1 < starts.length ? starts[index + 1][0] : source.length
    [name, source[offset...finish]]
  end
end

abort("Expected freshly generated aggregate files") unless File.file?(GENERATED) && File.file?(RESOURCES)

generated = File.read(GENERATED)
resources = File.read(RESOURCES)
resource_blocks = blocks(resources, /^defmodule Inttegro\.([A-Za-z0-9_]+) do$/).to_h
direct_owners = Hash.new { |hash, key| hash[key] = [] }

SERVICES.each do |service|
  resource_blocks.fetch(service).scan(/\bInttegro\.([A-Za-z0-9_]+)/).flatten.each do |name|
    next if name == "Client"
    direct_owners[name] << service unless direct_owners[name].include?(service)
  end
end

names = blocks(generated, /^defmodule Inttegro\.([A-Za-z0-9_]+) do$/).map(&:first) - ["Codec"]
unowned = []

mapping = names.to_h do |name|
  direct = direct_owners[name]
  owner = direct.one? ? direct.first : SPECIAL[name]
  owner ||= PATTERNS.find { |pattern, _namespace| name.match?(pattern) }&.last
  owner ||= direct.first
  unowned << name unless owner
  [name, "Inttegro.#{owner}.#{name}"]
end

abort("No namespace owner for: #{unowned.join(', ')}") unless unowned.empty?
mapping.merge!(CLIENT_TYPES)
pattern = /\bInttegro\.(#{mapping.keys.sort_by { |name| -name.length }.join('|')})\b/

[
  GENERATED,
  RESOURCES,
  File.join(ROOT, "lib/inttegro/client.ex"),
  File.join(ROOT, "test/public_api_test.exs"),
  File.join(ROOT, "README.md")
].each do |path|
  source = File.read(path)
  File.write(path, source.gsub(pattern) { mapping.fetch(Regexp.last_match(1)) })
end

puts "Namespaced #{names.length} generated modules and #{CLIENT_TYPES.length} client types."
