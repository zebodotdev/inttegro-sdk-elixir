# Changelog

## 0.2.0

- Reorganized API types into domain namespaces such as `Inttegro.Orders.Order` and
  `Inttegro.Files.File` instead of exposing every schema directly below `Inttegro`.
- Added module, type, constructor, and resource-operation documentation derived from the public API
  contract, together with workflow guides for setup, payments, retries, pagination, files, and
  observability.
- Hid JSON encoding and decoding functions from the public reference while retaining them as SDK
  implementation details.
- Tightened financial-account and payment-method response models to exclude internal platform
  fields.

This release contains breaking module-name changes from `0.1.x`.

## 0.1.0

- Initial typed server SDK.
