{
  description = "Haskell bindings to the Temporal Core library as well as an SDK built on top of it.";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    devenv.url = "github:cachix/devenv/v1.11.2";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "devenv/nixpkgs";
    };
  };

  outputs =
    inputs@{ self, ... }:
    let
      flakeUtils = import ./nix/utils/flake.nix inputs;
    in
    {
      devShells = flakeUtils.forAllSystems (
        { pkgs, ... }:
        let
          inherit (import ./nix/utils/matrix.nix) ghcVersions;
          mkShell =
            ghcVersion:
            inputs.devenv.lib.mkShell {
              inherit inputs pkgs;
              modules = [
                ./nix/devenv/temporal-bridge.nix
                ./nix/devenv/temporal-dev-server.nix
                (pkgs.lib.modules.importApply ./nix/devenv/haskell.nix ghcVersion)
                ./nix/devenv/repo-wide-checks.nix
                (
                  { pkgs, ... }:
                  {
                    packages = [ pkgs.temporal-test-server ];
                  }
                )
              ];
            };
          shells = inputs.nixpkgs.lib.genAttrs ghcVersions (version: mkShell version);
        in
        shells // { default = shells.ghc910; }
      );

      packages = flakeUtils.forAllSystems (
        { pkgs, ... }:
        let
          haskellUtils = import ./nix/utils/haskell.nix pkgs;
          inherit (import ./nix/utils/matrix.nix) ghcVersions;

          # Generate coverage packages for supported GHC versions
          coveragePackages = builtins.listToAttrs (
            builtins.map (ghcVersion: {
              name = "coverage-${ghcVersion}";
              value = import ./nix/packages/coverage.nix {
                inherit pkgs ghcVersion;
                haskellPackages = pkgs.haskell.packages.${ghcVersion};
              };
            }) ghcVersions
          );
        in
        haskellUtils.localPackageMatrix
        // coveragePackages
        // {
          temporal-bridge = pkgs.temporal_bridge;
          temporal-test-server = pkgs.temporal-test-server;
          update-temporal-revision = import ./nix/packages/update-temporal-revision.nix {
            inherit pkgs;
            rustToolchain = inputs.fenix.packages.${pkgs.system}.stable.toolchain;
          };
        }
      );

      haskellOverlays = {
        hs-temporal-sdk = import ./nix/overlays/haskell/hs-temporal-sdk.nix;
        dependencies = {
          default = import ./nix/overlays/haskell/deps.nix;
          ghc910 = import ./nix/overlays/haskell/ghc910-deps.nix;
        };
      };

      overlays = {
        development = import ./nix/overlays/development.nix;
        native = import ./nix/overlays/native.nix;
        # A top-level nixpkgs overlay that extends supported GHC package sets with
        # `hs-temporal-sdk` packages & any dependency modifications required for
        # development.
        #
        # NOTE: This is _not_ intendedd for downstream consumption, and is
        # primarily exposed to support our development & CI environments.
        haskell-development = final: prev: {
          haskell = (prev.haskell or { }) // {
            packages = (prev.haskell.packages or { }) // {
              ghc910 = prev.haskell.packages.ghc910.extend (
                prev.lib.composeManyExtensions [
                  (self.haskellOverlays.dependencies.default final)
                  (self.haskellOverlays.dependencies.ghc910 final)
                  (self.haskellOverlays.hs-temporal-sdk final)
                ]
              );
            };
          };
        };
      };
    };

  # --- Flake Local Nix Configuration -----------------------------------------
  nixConfig = {
    # This sets the flake to use several upstream substituters that have cached
    # artifacts for some of our dependencies.
    #
    # Nix should ask for permission before using it, but remove it here if you
    # do not want it to.
    extra-substituters = [
      "https://cache.garnix.io"
      "https://devenv.cachix.org"
    ];
    extra-trusted-public-keys = [
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
    ];
    allow-import-from-derivation = "true";
  };
}
