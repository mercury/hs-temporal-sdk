{ ... }:
let
  ignoreGeneratedCode =
    attrs:
    attrs
    // {
      excludes = [
        "^protos/"
        "dist-newstyle/"
        "^sdk/src/Data/EvalRecord/TH\\.hs"
      ] ++ attrs.excludes or [ ];
    };

  ignoreCrate2Nix =
    attrs:
    attrs
    // {
      excludes = [
        "^core/rust/Cargo\\.nix"
        "^core/rust/crate-hashes\\.json"
      ] ++ attrs.excludes or [ ];
    };

  ignoreConflictingFormatting =
    attrs:
    attrs
    // {
      excludes = [
        "^sdk/src/Temporal/Client/Namespace\\.hs"
        "^sdk/src/Temporal/Client/Workflow\\.hs"
        "^sdk/src/Temporal/Workflow/Internal/Monad\\.hs" # CPP not supported by fourmolu
        "^sdk/test/Spec\\.hs"
        "Setup\\.hs$" # CPP not supported by fourmolu
      ] ++ attrs.excludes or [ ];
    };
in
{
  git-hooks.hooks = {
    nixfmt-rfc-style = ignoreCrate2Nix {
      enable = true;
    };
    shellcheck.enable = true;
    # clippy.enable = true;
    fourmolu = ignoreConflictingFormatting (ignoreGeneratedCode {
      enable = true;
    });
    hlint = ignoreGeneratedCode {
      enable = true;
    };
    deadnix = ignoreCrate2Nix {
      enable = true;
    };
    hpack.enable = true;
    end-of-file-fixer = ignoreCrate2Nix (ignoreGeneratedCode {
      enable = true;
    });
    shfmt.enable = true;
    check-shebang-scripts-are-executable.enable = true;
    check-symlinks.enable = true;
    check-merge-conflicts.enable = true;
  };
}
