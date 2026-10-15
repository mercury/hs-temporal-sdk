# Agent Instructions

## Cursor Cloud specific instructions

This project uses **Nix flakes** for all builds and development tooling.
The cloud agent VM has Nix installed via the Dockerfile, but the nix-daemon
must be running for any Nix command to work.

### Ensuring the Nix daemon is running

The `start` command in `environment.json` launches the daemon. If you get
`error: cannot open connection to remote store 'daemon'`, run:

```bash
sudo /nix/var/nix/profiles/default/bin/nix-daemon &
sleep 2
```

### Building

```bash
# Build the Rust bridge
nix build .#temporal-bridge

# Build all Haskell packages for a GHC version
nix build .#hs-temporal-suite-ghc910

# Build all three GHC versions (required for CI parity)
nix build .#hs-temporal-suite-ghc96
nix build .#hs-temporal-suite-ghc98
nix build .#hs-temporal-suite-ghc910
```

### Entering a dev shell

For interactive cabal commands, protogen, cargo, cbindgen, etc.:

```bash
nix develop .#ghc910
```

Inside the dev shell you have access to: `ghc`, `cabal`, `cargo`, `rustc`,
`cbindgen`, `crate2nix`, `protogen`, `hpack`, `temporal` (CLI),
`temporal-test-server`, `hlint`, `fourmolu`.

### Running tests

Tests require a Temporal dev server. From inside a dev shell:

```bash
# Start the dev server in the background
temporal server start-dev --headless &
sleep 3

# Run the full test suite
cabal test temporal-sdk
```

### Protobuf regeneration

From inside a dev shell:

```bash
protogen
```

This regenerates `protos/src/Proto/` from upstream `.proto` files and runs
`hpack` to update the cabal file.

### Rust bridge workflow

```bash
cd core/rust
cargo build          # compile the bridge
crate2nix generate   # regenerate Cargo.nix for Nix builds
bash bindgen.sh      # regenerate temporal_bridge.h
cd ../..
```

### Code style

- Haskell: `fourmolu` for formatting, `hlint` for linting
- Nix: `nixfmt-rfc-style`
- Shell: `shfmt` + `shellcheck`
- No list comprehensions in Haskell — use `do` syntax or datatype-specific
  functions
- No sleeps for readiness or synchronization in tests — use query-based readiness
  probes or explicit synchronization. Deliberate delays (including `threadDelay`)
  are allowed when elapsed time is what the test exercises.
