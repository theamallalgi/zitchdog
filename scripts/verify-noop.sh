#!/usr/bin/env bash

set -euo pipefail

BASE_BRANCH="${1:-main}"
VARIANTS=("dune" "grape" "pine")
WORKTREE_DIR="../zitchdog-verify"
TMP_DIR=$(mktemp -d)

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BOLD='\033[1m'
RESET='\033[0m'

# shellcheck disable=SC2329
cleanup() {
	git worktree remove --force "$WORKTREE_DIR" 2>/dev/null || true
	rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo -e "${BOLD}Setting up worktree for '$BASE_BRANCH'...${RESET}"
git worktree add --force "$WORKTREE_DIR" "$BASE_BRANCH" >/dev/null

mkdir -p "$WORKTREE_DIR/scripts"
cp scripts/minimal_init.lua "$WORKTREE_DIR/scripts/minimal_init.lua"
cp scripts/dump_groups.lua "$WORKTREE_DIR/scripts/dump_groups.lua"

fail=0

for variant in "${VARIANTS[@]}"; do
	current_out="$TMP_DIR/current_${variant}.txt"
	base_out="$TMP_DIR/base_${variant}.txt"

	nvim --headless --clean -u scripts/minimal_init.lua \
		-c "lua dofile(vim.fn.getcwd() .. '/scripts/dump_groups.lua')('$variant', '$current_out')" \
		-c "qa" 2>/dev/null

	(cd "$WORKTREE_DIR" && nvim --headless --clean -u scripts/minimal_init.lua \
		-c "lua dofile(vim.fn.getcwd() .. '/scripts/dump_groups.lua')('$variant', '$base_out')" \
		-c "qa" 2>/dev/null)

	if [[ ! -s "$current_out" || ! -s "$base_out" ]]; then
		echo -e "[${YELLOW}${variant}${RESET}] ${YELLOW}${BOLD}FAILED TO GENERATE OUTPUT${RESET}"
		fail=1
		continue
	fi

	if diff -q "$base_out" "$current_out" >/dev/null; then
		echo -e "[${variant}] ${GREEN}${BOLD}IDENTICAL${RESET}"
	else
		echo -e "[${variant}] ${RED}${BOLD}DIFFERS${RESET}"
		diff "$base_out" "$current_out" | while IFS= read -r line; do
			case "$line" in
			"<"*) echo -e "  ${RED}${line}${RESET}" ;;
			">"*) echo -e "  ${GREEN}${line}${RESET}" ;;
			*) echo "  $line" ;;
			esac
		done
		fail=1
	fi
done

if [[ $fail -eq 0 ]]; then
	echo -e "${GREEN}${BOLD}ALL VARIANTS PASSED${RESET}"
else
	echo -e "${RED}${BOLD}ONE OR MORE VARIANTS FAILED${RESET}"
fi

exit $fail
