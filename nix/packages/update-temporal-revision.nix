{
  pkgs,
  rustToolchain,
}:
# `nix` is not an input: the script calls the `nix` that runs it, so that
# `nix run .#protogen` evaluates the updated `Cargo.nix`.
pkgs.writeShellApplication {
  name = "update-temporal-revision";
  runtimeInputs = with pkgs; [
    bash
    curl
    git
    jq
    yq
    crate2nix
    protobuf
    rust-cbindgen
    rustToolchain
  ];
  text = builtins.readFile ../../scripts/update-temporal-revision.sh;
  # Export PROTOC environment variable
  runtimeEnv = {
    PROTOC = "${pkgs.protobuf}/bin/protoc";
  };
}
