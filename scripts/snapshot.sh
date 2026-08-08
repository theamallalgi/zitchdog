#!/usr/bin/env bash

set -euo pipefail

FIXTURE="$1"
TRIGGER="${2:-}"
NAME=$(basename "$FIXTURE")
if [[ -n "$TRIGGER" ]]; then
	NAME="${NAME}.${TRIGGER}"
fi

SESSION="zitchdog-snap-$$"
OUT_DIR="tests/snapshots"
mkdir -p "$OUT_DIR"

tmux new-session -d -s "$SESSION" -x 120 -y 40 \
	"ZITCHDOG_TRIGGER=$TRIGGER nvim --clean -u scripts/visual_init.lua '$FIXTURE'"

sleep 1.2

tmux capture-pane -t "$SESSION" -e -p > "$OUT_DIR/${NAME}.snap"

tmux kill-session -t "$SESSION"

echo "Captured: $OUT_DIR/${NAME}.snap"
