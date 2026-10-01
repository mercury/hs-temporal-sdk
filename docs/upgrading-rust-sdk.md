# Upgrading the Temporal Rust SDK

`temporal-sdk-core` wraps the upstream Rust SDK
([`temporalio/sdk-rust`](https://github.com/temporalio/sdk-rust)). Our bridge
crate in `core/rust` pins the `temporalio-*` crates to one git revision in
`core/rust/Cargo.toml`.

## What depends on the pin

| Artifact | Generator | Depends on |
|----------|-----------|------------|
| `core/rust/Cargo.lock` | `cargo` | `Cargo.toml` |
| `core/rust/Cargo.nix`, `core/rust/crate-hashes.json` | `crate2nix generate` | `Cargo.lock` |
| `core/rust/temporal_bridge.h` | `core/rust/bindgen.sh` (cbindgen) | `core/rust/src` |
| `protos/src/**`, `protos/temporal-api-protos.cabal` | `nix run .#protogen` | the upstream protos at the revision that `Cargo.nix` pins |
| Haskell code in `core/src` and `sdk/src` | you | the protobuf types, the C header and the Rust serde config structs |

protogen reads the protos from the source that `Cargo.nix` pins. Always run
it with `nix run .#protogen` after `crate2nix generate`. A `protogen` from a
development shell that you entered before the change uses the old
`Cargo.nix`.

## Ship one change

The Rust bump, the regenerated artifacts (including protogen) and the Haskell
fixes must ship in one change. The protobuf modules are the wire contract
between Haskell and the bridge. If you bump the Rust crates without protogen,
everything still builds, but Haskell encodes and decodes the old message
definitions. If you run protogen without the Haskell fixes, the build fails:
CI makes `-Wincomplete-patterns` an error, so every new oneof or enum
constructor must have a case.

## Procedure

1. Choose the target revision and read the upstream changes:

   ```bash
   nix run .#update-temporal-revision -- --dry-run          # latest main
   nix run .#update-temporal-revision -- --dry-run next     # next commit
   nix run .#update-temporal-revision -- --dry-run <rev>    # SHA or tag
   ```

   The dry run prints a GitHub compare link. Set `GITHUB_TOKEN` to avoid API
   rate limits.

2. Run the update without `--dry-run`. The script:

   1. Sets `rev` for every dependency on `temporalio/sdk-rust` in
      `core/rust/Cargo.toml`.
   2. Updates `Cargo.lock` (`cargo metadata`).
   3. Regenerates `Cargo.nix` and `crate-hashes.json` (`crate2nix generate`).
   4. Regenerates `temporal_bridge.h` (`bindgen.sh`).
   5. Regenerates `protos/` (`nix run .#protogen`).
   6. Builds the bridge (`cargo build`).

   It stops at the first generator that fails. It exits non-zero if the
   bridge does not build. The generated files are then up to date, and you
   continue with step 4.

   The "Manual Update Temporal Revision" GitHub workflow runs the same script
   and pushes the result to an `auto/update-temporal-revision-<date>` branch.
   Treat that branch as a starting point.

3. If the new upstream code needs a newer Rust compiler, update `date` and
   `sha256` of the toolchain in `nix/packages/temporal-bridge.nix`, then run
   the script again. The update script and the CI Rust checks use the same
   toolchain.

4. Fix the bridge in `core/rust/src`. After every change to the FFI
   functions or types, run `bash bindgen.sh` in `core/rust` and update
   `core/src/Temporal/Internal/FFI.hs` and `core/src/Temporal/Core/CTypes.hsc`
   to match `temporal_bridge.h`.

5. Fix the Haskell code:
   - Each incomplete-pattern error shows a new protobuf constructor. Handle it
     explicitly. Do not add a wildcard case.
   - Compare the Haskell JSON config types (`WorkerConfig`, `ClientConfig`,
     `TelemetryOptions` and the dev server configs) with the Rust serde
     structs that they mirror.

6. Run the checks:

   ```bash
   nix run .#check-generated
   nix develop .#rust --command cargo fmt --manifest-path core/rust/Cargo.toml --check
   nix develop .#rust --command cargo clippy --manifest-path core/rust/Cargo.toml --all-targets -- -D warnings
   nix develop .#rust --command cargo test --manifest-path core/rust/Cargo.toml
   nix build .#hs-temporal-suite-ghc910 .#temporal-bridge
   ```

   `check-generated` runs every generator and compares the result with the
   git index. It refuses to run if the generated files have unstaged changes,
   so stage them first.

7. Open one pull request with all of the above.

## What CI checks

- `build`: `nix build .#hs-temporal-suite-ghc910 .#temporal-bridge`. This
  builds every package and runs the Haskell test suites.
  `nix/overlays/haskell/strict-warnings.nix` makes
  `-Wincomplete-patterns`, `-Wincomplete-uni-patterns` and
  `-Wincomplete-record-updates` errors for `temporal-sdk` and
  `temporal-sdk-core`. `cabal.project` does the same for local cabal builds.
- `generated`: `nix run .#check-generated`.
- `rust`: `cargo fmt --check`, `cargo clippy --all-targets -- -D warnings`
  and `cargo test` in the `rust` development shell. That shell has the
  toolchain that builds the bridge. The default development shell can have a
  newer Rust, so its clippy can report more lints.
