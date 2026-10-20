#!/usr/bin/env bash
set -euo pipefail
SRC=~/Midgard/integrated-assignment-sem5/src/integrated_assignment_sem5
OUT=_shiny/zol-solver.qmd
mkdir -p _shiny
{
  echo '```{shinylive-python}'
  echo '#| standalone: true'
  echo '#| viewerHeight: 100%'
  echo '## file: app.py'
  cat "$SRC/app.py"
  echo
  echo '## file: core.py'
  cat "$SRC/core.py"
  echo
  echo '## file: requirements.txt'
  echo '```'
} > "$OUT"