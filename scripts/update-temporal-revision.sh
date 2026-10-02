#!/usr/bin/env bash
set -euo pipefail

# Update the pinned temporalio/sdk-rust revision and regenerate every artifact
# that depends on it.
#
# Usage: update-temporal-revision.sh [OPTION] [REVISION|next]
#   - no args: update to the latest commit on the default branch
#   - "next":  update to the commit after the current pin
#   - <ref>:   update to a specific commit (a full SHA, a short SHA or a tag)
#
# See docs/upgrading-rust-sdk.md for the complete upgrade procedure.

# Colors for output
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m' # No Color

# Configuration
readonly GITHUB_REPO="temporalio/sdk-rust"
readonly GIT_URL="https://github.com/$GITHUB_REPO"
readonly DEFAULT_BRANCH="main"
readonly RUST_DIR="core/rust"
readonly CARGO_TOML_PATH="$RUST_DIR/Cargo.toml"
# `next` searches this many pages of 100 commits for the current pin.
readonly MAX_HISTORY_PAGES=20

log_info() {
	echo -e "${BLUE}[INFO]${NC} $*" >&2
}

log_warn() {
	echo -e "${YELLOW}[WARN]${NC} $*" >&2
}

log_error() {
	echo -e "${RED}[ERROR]${NC} $*" >&2
}

log_success() {
	echo -e "${GREEN}[SUCCESS]${NC} $*" >&2
}

show_usage() {
	cat <<EOF
Usage: update-temporal-revision [OPTION] [REVISION]

Update the $GITHUB_REPO dependencies in $CARGO_TOML_PATH to one revision, then
regenerate Cargo.lock, Cargo.nix, crate-hashes.json, temporal_bridge.h and the
Haskell protobuf modules.

Options:
    -h, --help          Show this help message
    -v, --verbose       Enable verbose output
    -d, --dry-run       Show what would be done without making changes

Arguments:
    REVISION            Commit to update to (full SHA, short SHA or tag)
    next                Update to the next commit after the current pin
    (no argument)       Update to the latest commit on the $DEFAULT_BRANCH branch

Examples:
    update-temporal-revision                # Update to latest $DEFAULT_BRANCH
    update-temporal-revision next           # Update to the next commit
    update-temporal-revision abc123def      # Update to a specific commit
    update-temporal-revision --dry-run next # Show what would be done

Run it from the repository, for example with 'nix run .#update-temporal-revision'.
It calls 'nix run .#protogen', so 'nix' must be on PATH.

Environment Variables:
    GITHUB_TOKEN         GitHub token (optional, increases rate limits)

EOF
}

check_dependencies() {
	local missing_tools=()

	for tool in curl jq tomlq cargo crate2nix cbindgen git nix; do
		if ! command -v "$tool" >/dev/null 2>&1; then
			missing_tools+=("$tool")
		fi
	done

	if [[ ${#missing_tools[@]} -gt 0 ]]; then
		log_error "Missing required tools: ${missing_tools[*]}"
		log_error "Run this script with 'nix run .#update-temporal-revision' or from the development shell."
		exit 1
	fi
}

curl_github() {
	local url="$1"
	local curl_args=(
		--silent
		--show-error
		--fail
		--location
		--header "Accept: application/vnd.github+json"
	)

	if [[ -n ${GITHUB_TOKEN:-} ]]; then
		curl_args+=(--header "Authorization: Bearer $GITHUB_TOKEN")
	fi

	curl "${curl_args[@]}" "$url"
}

check_rate_limit() {
	local rate_limit_info
	if ! rate_limit_info=$(curl_github "https://api.github.com/rate_limit"); then
		log_warn "Could not check rate limit"
		return 0
	fi

	local remaining reset_time
	remaining=$(jq -r ".resources.core.remaining" <<<"$rate_limit_info")
	reset_time=$(jq -r ".resources.core.reset" <<<"$rate_limit_info")

	if [[ $remaining == "null" || -z $remaining ]]; then
		log_warn "Could not check rate limit"
		return 0
	fi

	log_info "API rate limit: $remaining requests remaining"

	if [[ $remaining -lt 10 ]]; then
		local reset_date
		reset_date=$(date -r "$reset_time" 2>/dev/null || echo "unknown")
		log_warn "Low API rate limit remaining. Reset time: $reset_date"
	fi
}

github_api_request() {
	local endpoint="$1"

	local response
	if ! response=$(curl_github "https://api.github.com/$endpoint"); then
		log_error "GitHub API request failed: $endpoint"
		return 1
	fi

	echo "$response"
}

# Print the full SHA of a commit-ish (branch, tag, full or short SHA).
resolve_revision() {
	local ref="$1"
	log_info "Resolving '$ref' in $GITHUB_REPO..."

	local response
	if ! response=$(github_api_request "repos/$GITHUB_REPO/commits/$ref"); then
		return 1
	fi

	local sha
	sha=$(jq -r ".sha" <<<"$response")

	if [[ ! $sha =~ ^[0-9a-f]{40}$ ]]; then
		log_error "GitHub API did not return a commit for '$ref'"
		return 1
	fi

	log_info "Resolved '$ref' to $sha"
	echo "$sha"
}

# Print the commit that comes directly after the current revision on the
# default branch. The API lists commits newest first.
get_next_revision() {
	local current_revision="$1"
	log_info "Fetching the commit after $current_revision on $GITHUB_REPO $DEFAULT_BRANCH..."

	local newer_sha=""
	local page
	for ((page = 1; page <= MAX_HISTORY_PAGES; page++)); do
		log_info "Checking page $page..."

		local response
		if ! response=$(github_api_request "repos/$GITHUB_REPO/commits?sha=$DEFAULT_BRANCH&per_page=100&page=$page"); then
			return 1
		fi

		if [[ $(jq -r "type" <<<"$response") != "array" ]]; then
			log_error "Invalid response from GitHub API"
			return 1
		fi

		local shas
		shas=$(jq -r ".[].sha" <<<"$response")
		if [[ -z $shas ]]; then
			break
		fi

		local sha
		while read -r sha; do
			if [[ $sha == "$current_revision" ]]; then
				if [[ -z $newer_sha ]]; then
					log_error "$current_revision is already the latest commit on $DEFAULT_BRANCH"
					return 1
				fi
				log_info "Found next commit: $newer_sha"
				echo "$newer_sha"
				return 0
			fi
			newer_sha="$sha"
		done <<<"$shas"
	done

	log_error "Could not find $current_revision in the last $((MAX_HISTORY_PAGES * 100)) commits of $DEFAULT_BRANCH"
	return 1
}

# Print the names of the dependencies that come from GIT_URL.
get_temporal_dependencies() {
	# shellcheck disable=SC2016 # `$url` is a jq variable.
	tomlq -r --arg url "$GIT_URL" \
		'.dependencies | to_entries[] | select((.value | type) == "object" and .value.git == $url) | .key' \
		"$CARGO_TOML_PATH"
}

get_dependency_revision() {
	local dep="$1"
	# shellcheck disable=SC2016 # `$dep` is a jq variable.
	tomlq -r --arg dep "$dep" '.dependencies[$dep].rev' "$CARGO_TOML_PATH"
}

# Print the revision that all temporal dependencies share.
get_current_revision() {
	local deps=("$@")
	local current=""

	local dep rev
	for dep in "${deps[@]}"; do
		rev=$(get_dependency_revision "$dep")
		if [[ ! $rev =~ ^[0-9a-f]{40}$ ]]; then
			log_error "Dependency $dep does not pin a full commit SHA (rev = '$rev')"
			return 1
		fi
		if [[ -n $current && $rev != "$current" ]]; then
			log_error "Dependencies pin different revisions ($current and $rev)"
			return 1
		fi
		current="$rev"
	done

	echo "$current"
}

update_cargo_toml() {
	local new_revision="$1"
	shift
	local deps=("$@")

	log_info "Updating $CARGO_TOML_PATH to revision $new_revision"

	local url_pattern="${GIT_URL//./\\.}"
	sed -i.bak -E \
		"\\|git = \"${url_pattern}\"|s|rev = \"[^\"]*\"|rev = \"${new_revision}\"|" \
		"$CARGO_TOML_PATH"
	rm -f "$CARGO_TOML_PATH.bak"

	local dep rev failed=false
	for dep in "${deps[@]}"; do
		rev=$(get_dependency_revision "$dep")
		if [[ $rev == "$new_revision" ]]; then
			log_info "  $dep: rev = $rev"
		else
			log_error "  $dep was not updated (rev = '$rev')"
			failed=true
		fi
	done

	if [[ $failed == "true" ]]; then
		log_error "Could not update every dependency. Edit $CARGO_TOML_PATH by hand."
		return 1
	fi
}

# Regenerate every artifact that depends on the pinned revision. Each step
# needs the previous one, so stop at the first failure. The callers use this
# function in a condition, where `set -e` does not apply, so every step
# returns explicitly.
regenerate_artifacts() {
	log_info "Updating Cargo.lock (cargo metadata)..."
	cargo metadata --format-version 1 --manifest-path "$CARGO_TOML_PATH" >/dev/null || return 1

	log_info "Regenerating Cargo.nix and crate-hashes.json (crate2nix generate)..."
	(cd "$RUST_DIR" && crate2nix generate) || return 1

	log_info "Regenerating temporal_bridge.h (bindgen.sh)..."
	(cd "$RUST_DIR" && bash bindgen.sh) || return 1

	# protogen reads the protos from the source that Cargo.nix pins. A new
	# `nix run` evaluates the Cargo.nix that crate2nix just wrote.
	log_info "Regenerating Haskell protobuf modules (nix run .#protogen)..."
	nix run "$repo_root#protogen" || return 1
}

main() {
	local dry_run=false
	local revision=""

	while [[ $# -gt 0 ]]; do
		case $1 in
		-h | --help)
			show_usage
			exit 0
			;;
		-v | --verbose)
			set -x
			shift
			;;
		-d | --dry-run)
			dry_run=true
			shift
			;;
		-*)
			log_error "Unknown option: $1"
			show_usage >&2
			exit 1
			;;
		*)
			if [[ -n $revision ]]; then
				log_error "Only one revision argument is allowed"
				exit 1
			fi
			revision="$1"
			shift
			;;
		esac
	done

	check_dependencies

	repo_root="$(git rev-parse --show-toplevel)"
	cd "$repo_root"

	if [[ ! -f $CARGO_TOML_PATH ]]; then
		log_error "Cargo.toml not found at $repo_root/$CARGO_TOML_PATH"
		exit 1
	fi

	if [[ -z ${GITHUB_TOKEN:-} ]]; then
		log_warn "GITHUB_TOKEN is not set. GitHub API rate limits are 60 requests per hour."
	fi
	check_rate_limit

	local deps=()
	mapfile -t deps < <(get_temporal_dependencies)

	if [[ ${#deps[@]} -eq 0 ]]; then
		log_error "No dependencies with git = \"$GIT_URL\" found in $CARGO_TOML_PATH"
		exit 1
	fi
	log_info "Temporal dependencies: ${deps[*]}"

	local current_revision
	current_revision=$(get_current_revision "${deps[@]}")
	log_info "Current revision: $current_revision"

	local target_revision
	case "$revision" in
	"")
		target_revision=$(resolve_revision "$DEFAULT_BRANCH")
		;;
	next)
		target_revision=$(get_next_revision "$current_revision")
		;;
	*)
		target_revision=$(resolve_revision "$revision")
		;;
	esac

	log_info "Target revision: $target_revision"
	if [[ $target_revision == "$current_revision" ]]; then
		log_info "The target is the current revision. Regenerating the artifacts anyway."
	fi

	if [[ $dry_run == "true" ]]; then
		log_info "DRY RUN: would set rev = \"$target_revision\" for: ${deps[*]}"
		log_info "DRY RUN: would run 'cargo metadata', 'crate2nix generate', 'bindgen.sh', 'nix run .#protogen' and 'cargo build'"
		log_info "Compare: https://github.com/$GITHUB_REPO/compare/$current_revision...$target_revision"
		exit 0
	fi

	update_cargo_toml "$target_revision" "${deps[@]}"

	if ! regenerate_artifacts; then
		log_error "Regeneration failed. The working tree has partial changes."
		exit 1
	fi

	log_info "Building the bridge (cargo build)..."
	if ! (cd "$RUST_DIR" && cargo build); then
		log_error "The generated artifacts are up to date, but the bridge does not build."
		log_error "Fix core/rust/src, then follow docs/upgrading-rust-sdk.md."
		exit 1
	fi

	log_success "Updated $GITHUB_REPO to $target_revision"
	log_info "Changes from $current_revision: https://github.com/$GITHUB_REPO/compare/$current_revision...$target_revision"
	log_info "Next: fix the Haskell code and run the checks in docs/upgrading-rust-sdk.md."
}

main "$@"
