{
  callPackage,
  fenix,
  lib,
  ...
}:
let
  # The Rust toolchain that builds the bridge. It is exported as
  # `temporal-bridge-rust-toolchain` so that CI and the upgrade tooling use the
  # same compiler.
  toolchain = fenix.toolchainOf {
    channel = "stable";
    date = "2025-11-10";
    sha256 = "sha256-SDu4snEWjuZU475PERvu+iO50Mi39KVjqCeJeNvpguU=";
  };
  customBuildRustCrateForPkgs =
    pkgs:
    pkgs.buildRustCrate.override {
      inherit (toolchain) rustc cargo;
      defaultCrateOverrides = pkgs.defaultCrateOverrides // {
        prost = _attrs: {
          PROTOC = "${pkgs.protobuf}/bin/protoc";
          PROTOC_INCLUDE = "${pkgs.protobuf}/include";
        };
        prost-wkt-types = _attrs: {
          PROTOC = "${pkgs.protobuf}/bin/protoc";
          PROTOC_INCLUDE = "${pkgs.protobuf}/include";
        };
        temporalio-common = _attrs: {
          PROTOC = "${pkgs.protobuf}/bin/protoc";
          PROTOC_INCLUDE = "${pkgs.protobuf}/include";
        };
        temporal_bridge = attrs: {
          buildInputs = pkgs.lib.optionals pkgs.stdenv.hostPlatform.isDarwin [ pkgs.apple-sdk ];
          postInstall = ''
            ${attrs.postInstall or ""}
            ${pkgs.lib.optionalString pkgs.stdenv.isDarwin ''
              for library in $lib/lib/*.so $lib/lib/*.dylib; do #*/
                echo "Trying to fix library paths for $library"
                if [ -f "$library" ] && [ ! -L "$library" ]; then
                  install_name_tool -id "$library" "$library"
                fi
              done
            ''}
          '';
        };
        ring = attrs: {
          CARGO_MANIFEST_LINKS = attrs.links;
        };
      };
    };
  cargoNix = callPackage ../../core/rust/Cargo.nix {
    buildRustCrateForPkgs = customBuildRustCrateForPkgs;
  };
in
{
  temporal_bridge = cargoNix.rootCrate.build.lib;
  temporal-sdk-core-src = cargoNix.internal.crates.temporalio-sdk-core.src;
  temporal-bridge-rust-toolchain = toolchain;
}
