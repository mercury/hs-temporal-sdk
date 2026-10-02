{
  writeShellApplication,
  coreutils,
  crate2nix,
  git,
  gnused,
  rust-cbindgen,
  temporal-bridge-rust-toolchain,
}:
# `nix` is not an input: the script calls the `nix` that runs it.
writeShellApplication {
  name = "check-generated";
  runtimeInputs = [
    coreutils
    crate2nix
    git
    gnused
    rust-cbindgen
    temporal-bridge-rust-toolchain.defaultToolchain
  ];
  text = builtins.readFile ../../scripts/check-generated.sh;
}
