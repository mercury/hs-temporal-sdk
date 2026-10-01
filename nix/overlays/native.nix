final: _prev:
let
  temporalBridgeDrvs = final.callPackage ../packages/temporal-bridge.nix { };
in
{
  temporal-test-server = final.callPackage ../packages/temporal-test-server.nix { };
  inherit (temporalBridgeDrvs)
    temporal_bridge
    temporal-sdk-core-src
    temporal-bridge-rust-toolchain
    ;
}
