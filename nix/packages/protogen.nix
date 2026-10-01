{
  writeShellApplication,
  lib,
  temporal-sdk-core-src,
  proto-lens-protoc,
  protobuf,
  hpack,
  git,
  ...
}:

# `temporal-sdk-core-src` comes from `core/rust/Cargo.nix`. Run this from a
# Nix evaluation that sees the current `Cargo.nix` (for example
# `nix run .#protogen`), otherwise it generates code from an old revision.
writeShellApplication {
  name = "protogen";
  runtimeInputs = [
    protobuf
    hpack
    git
  ];
  text = ''
    shopt -s globstar
    repo_root="$( git rev-parse --show-toplevel )"
    package_dir="$repo_root/protos"
    # Every module under `src/Proto` is generated. Remove them first so that
    # modules for deleted upstream protos do not stay behind.
    rm -rf "$package_dir/src/Proto"
    protoc \
      --plugin=protoc-gen-haskell=${lib.getExe proto-lens-protoc} \
      --haskell_out="$package_dir/src" \
      --proto_path=${temporal-sdk-core-src}/crates/common/protos/api_upstream \
      --proto_path=${temporal-sdk-core-src}/crates/common/protos/google \
      --proto_path=${temporal-sdk-core-src}/crates/common/protos/grpc \
      --proto_path=${temporal-sdk-core-src}/crates/common/protos/local \
      --proto_path=${temporal-sdk-core-src}/crates/common/protos/testsrv_upstream \
      ${temporal-sdk-core-src}/crates/common/protos/api_upstream/**/*.proto \
      ${temporal-sdk-core-src}/crates/common/protos/google/**/*.proto \
      ${temporal-sdk-core-src}/crates/common/protos/grpc/**/*.proto \
      ${temporal-sdk-core-src}/crates/common/protos/local/**/*.proto \
      ${temporal-sdk-core-src}/crates/common/protos/testsrv_upstream/temporal/**/*.proto
    # Remove codegen for well-known types (`proto-lens` provides these).
    rm -rf "$package_dir/src/Proto/Google/Protobuf"
    # Re-generate cabal file to include new/updated modules.
    hpack "$package_dir"
  '';
}
