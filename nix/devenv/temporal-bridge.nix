{ pkgs, ... }:
let
  rustToolchain = pkgs.temporal-bridge-rust-toolchain.withComponents [
    "cargo"
    "rustc"
    "rust-std"
    "clippy"
    "rustfmt"
    "rust-src"
    "rust-analyzer"
  ];
in
{
  packages =
    [
      pkgs.crate2nix
      pkgs.protobuf
      pkgs.rust-cbindgen
      rustToolchain
      pkgs.yq
    ]
    ++ pkgs.lib.optionals pkgs.stdenv.hostPlatform.isDarwin [
      pkgs.apple-sdk
      pkgs.libiconv
    ];

  env = {
    PROTOC = "${pkgs.protobuf}/bin/protoc";
    RUST_SRC_PATH = "${pkgs.temporal-bridge-rust-toolchain.rust-src}/lib/rustlib/src/rust/library";
  };

  git-hooks.hooks = {
    crate2nix = {
      enable = false;
      name = "crate2nix";
      files = "Cargo\\.(toml|lock)$";
      language = "system";
      pass_filenames = true;
      entry = ''
        cd $(dirname $1)
        ${pkgs.crate2nix}/bin/crate2nix generate
      '';
    };

    # Not smart enough to find the location of the Cargo.toml
    cargo-check.enable = false;
  };
}
