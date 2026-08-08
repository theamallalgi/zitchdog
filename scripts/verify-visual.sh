#!/usr/bin/env bash

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

fail=0
for f in tests/fixtures/*; do
	name=$(basename "$f")
	baseline="tests/snapshots/${name}.snap"
	tmp=$(mktemp)

	SESSION="zitchdog-snap-$$"
	tmux new-session -d -s "$SESSION" -x 120 -y 40 "nvim --clean -u scripts/visual_init.lua '$f'"
	sleep 1.2
	tmux capture-pane -t "$SESSION" -e -p >"$tmp"
	tmux kill-session -t "$SESSION"

	if diff -q "$baseline" "$tmp" >/dev/null; then
		echo -e "[${name}] ${GREEN}MATCH${RESET}"
	else
		echo -e "[${name}] ${RED}CHANGED${RESET}"
		diff "$baseline" "$tmp" || true
		fail=1
	fi
	rm -f "$tmp"
done

exit $fail
