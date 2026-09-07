# Releasing

1. Update `@version` in `mix.exs`, `@version` in `Inttegro.Client`, and
   `CHANGELOG.md`, then merge the release commit.
2. Create a `release` GitHub environment with no required reviewers and add a
   least-privilege `HEX_API_KEY` secret that can publish `inttegro`.
3. Push a `v<version>` tag that points at the release commit.

The workflow verifies, tests, audits, builds, and documents the package; attests
the Hex artifact; records checksums and provenance; creates a draft GitHub
release; publishes the package and HexDocs; and only then makes the release public.
