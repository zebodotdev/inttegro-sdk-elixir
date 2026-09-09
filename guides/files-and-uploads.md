# Files and uploads

Inttegro separates file metadata, binary delivery, public links, and delegated upload requests. Use
the smallest capability that fits the person or service handling the content.

## Upload from trusted server code

`Inttegro.Files.create/3` sends a multipart request authenticated by the application's secret key:

```elixir
request =
  Inttegro.Files.CreateRequest.new!(
    file_name: "invoice.pdf",
    bytes: File.read!("invoice.pdf"),
    purpose: "order_document",
    title: "Invoice 1042",
    custom_data: %{"order_id" => "or_..."}
  )

{:ok, file} =
  Inttegro.Files.create(client, request,
    idempotency_key: "invoice-upload-order-1042"
  )
```

The current uploader constructs the multipart body in memory. Keep that behavior in mind when
setting file-size limits or processing several uploads concurrently.

## Check availability

Creating a file can return before processing and safety checks finish. Fetch its metadata and check
both `status` and `scan_status` before making it publicly downloadable:

```elixir
request = Inttegro.Files.LookupFileRequest.new!(file_id: file.id)
{:ok, file} = Inttegro.Files.lookup(client, request)

case {file.status, file.scan_status} do
  {:available, :passed} -> :ready
  {:failed, _} -> {:failed, file.latest_error}
  state -> {:processing, state}
end
```

## Download original bytes

File metadata does not contain the binary body:

```elixir
request = Inttegro.Files.FileContentsRequest.new!(file_id: file.id)
{:ok, download} = Inttegro.Files.contents(client, request)

File.write!("downloaded-invoice.pdf", download.bytes)
```

The returned `%Inttegro.Files.Download{}` includes the content type and filename when the delivery
response provides them. The SDK does not write the file automatically.

## Share a file link

A file link is a revocable delivery capability. Creating it requires the application secret key;
opening it requires only its public ID and token:

```elixir
request = Inttegro.FileLinks.OpenRequest.new!(id: link_id, token: link_token)
{:ok, download} = Inttegro.FileLinks.open(client, request)
```

The client is used for transport configuration, but the open request intentionally omits its secret
key. Treat the token as sensitive until the link expires or is revoked.

## Let another party upload

Upload requests let the application define constraints while another party supplies the bytes. Give
the uploader the request ID and token, not the application secret key. The uploader fulfils it with
`Inttegro.UploadRequests.FulfillRequest`; the application can then inspect, review, cancel, or
reconcile the resulting attempt.

Deletion tombstones file metadata and cleans backing storage only when the reference policy allows
it. Remove or reconcile live references before expecting deletion to succeed.
