#!/usr/bin/env bash
set -euo pipefail

# Check that the committed generated artifacts match their sources.
#
# The script runs every generator in place and then compares the result with
# the git index. The regenerated files stay in the working tree, so you can
# inspect them with `git diff` and stage them, or revert them with
# `git restore`.
#
# Run it with `nix run .#check-generated`, or run `scripts/check-generated.sh`
# from the development shell. It calls `nix run .#protogen`, so protogen
# always reads the current `core/rust/Cargo.nix`.

readonly RUST_DIR="core/rust"
readonly GENERATED_PATHS=(
	"protos/src"
	"protos/temporal-api-protos.cabal"
	"$RUST_DIR/temporal_bridge.h"
	"$RUST_DIR/Cargo.nix"
	"$RUST_DIR/crate-hashes.json"
	"$RUST_DIR/Cargo.lock"
)
readonly DIFF_PREVIEW_LINES=200

failures=()

show_usage() {
	echo "Usage: check-generated [-h|--help]"
	echo
	echo "Regenerate these files and fail if they differ from the git index:"
	printf '  %s\n' "${GENERATED_PATHS[@]}"
	echo
	echo "The check also fails if Cargo.lock does not match Cargo.toml."
}

indent() {
	sed 's/^/  /'
}

log_info() {
	echo "[check-generated] $*"
}

log_error() {
	echo "[check-generated] ERROR: $*" >&2
}

# Print the generated paths that differ from the index or that are not tracked.
changed_paths() {
	git diff --name-only -- "${GENERATED_PATHS[@]}"
	git ls-files --others --exclude-standard -- "${GENERATED_PATHS[@]}"
}

run_step() {
	local description="$1"
	shift
	log_info "$description"
	if ! "$@"; then
		log_error "Step failed: $description"
		failures+=("step failed: $description")
	fi
}

check_lockfile() {
	cargo metadata --locked --format-version 1 \
		--manifest-path "$RUST_DIR/Cargo.toml" >/dev/null
}

generate_cargo_nix() {
	(cd "$RUST_DIR" && crate2nix generate)
}

generate_header() {
	(cd "$RUST_DIR" && bash bindgen.sh)
}

generate_protos() {
	nix run "$repo_root#protogen"
}

main() {
	case "${1:-}" in
	"") ;;
	-h | --help)
		show_usage
		exit 0
		;;
	*)
		show_usage >&2
		exit 2
		;;
	esac

	repo_root="$(git rev-parse --show-toplevel)"
	cd "$repo_root"

	local dirty
	dirty="$(changed_paths)"
	if [[ -n $dirty ]]; then
		log_error "These generated files have unstaged or untracked changes:"
		indent <<<"$dirty" >&2
		log_error "Stage or revert them first. The check compares against the git index."
		exit 1
	fi

	# Check the lock file first: cbindgen runs `cargo metadata` without
	# `--locked`, so it updates a stale Cargo.lock.
	run_step "Check that Cargo.lock matches Cargo.toml (cargo metadata --locked)" check_lockfile
	run_step "Regenerate Cargo.nix and crate-hashes.json (crate2nix generate)" generate_cargo_nix
	run_step "Regenerate temporal_bridge.h (bindgen.sh)" generate_header
	run_step "Regenerate protos (nix run .#protogen)" generate_protos

	local drift
	drift="$(changed_paths)"
	if [[ -n $drift ]]; then
		failures+=("generated files differ from the git index")
		log_error "These generated files differ from the git index:"
		indent <<<"$drift" >&2
		echo >&2
		git --no-pager diff --stat -- "${GENERATED_PATHS[@]}" >&2
		echo >&2
		log_error "First $DIFF_PREVIEW_LINES lines of the diff:"
		# `head` can close the pipe before git finishes. That is not an error.
		git --no-pager diff -- "${GENERATED_PATHS[@]}" | head -n "$DIFF_PREVIEW_LINES" >&2 || true
	fi

	if [[ ${#failures[@]} -gt 0 ]]; then
		echo >&2
		log_error "Generated artifacts are not up to date:"
		printf '  - %s\n' "${failures[@]}" >&2
		log_error "Inspect the regenerated files with 'git diff', and commit them with the source change."
		log_error "See docs/upgrading-rust-sdk.md for the generator commands."
		exit 1
	fi

	log_info "All generated artifacts are up to date."
}

main "$@"
