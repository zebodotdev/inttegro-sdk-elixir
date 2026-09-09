# Contributing

## Regenerating the public API

The schema generator emits aggregate `lib/inttegro/generated.ex` and
`lib/inttegro/resources.ex` files. Before committing regenerated output, run:

```console
ruby tools/namespace_generated.rb
ruby tools/enrich_docs.rb
ruby tools/split_sources.rb
mix format
mix test
mix docs --warnings-as-errors
```

The three transformations assign every generated module to its owning domain, import operation
descriptions from the public OpenAPI contract, add ExDoc metadata, and split the aggregate output
into focused source files. The documentation tests reject flat root types, placeholder prose, and
undocumented resource functions.

`tools/enrich_docs.rb` reads `../../openapi/commerce.yml` when the SDK is checked out through the
Commerce repository. In a standalone checkout, set `INTTEGRO_OPENAPI` to the absolute path of the
public `commerce.yml` contract before running it.

Open an issue before proposing a public API change. Pull requests must preserve
typed domain returns, keep HTTP envelopes private, include tests, and pass every
required workflow. Generated contract files are reviewed as source; regeneration
tools live in this repository so the published API can be reproduced and reviewed.
