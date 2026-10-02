{ lib, haskell, ... }:
# Make some warnings errors in this repository's own builds (CI and the flake
# packages). Only the `haskell-development` overlay applies this overlay, so
# users of `haskellOverlays.hs-temporal-sdk` and Hackage users are not
# affected.
#
# An incomplete pattern match on a protobuf enum or oneof means that a new
# upstream constructor compiles but fails at runtime. Keep this list in sync
# with `cabal.project`.
_hfinal: hprev:
let
  inherit (haskell.lib.compose) appendConfigureFlags;
  strictWarnings = appendConfigureFlags (
    lib.map (flag: "--ghc-option=${flag}") [
      "-Werror=incomplete-patterns"
      "-Werror=incomplete-uni-patterns"
      "-Werror=incomplete-record-updates"
    ]
  );
in
{
  temporal-sdk = strictWarnings hprev.temporal-sdk;
  temporal-sdk-core = strictWarnings hprev.temporal-sdk-core;
}
