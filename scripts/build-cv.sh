#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "$script_dir/.." && pwd)"
cv_dir="$repo_dir/cv"
output_dir="$repo_dir/output/pdf"

if [[ -n "${TECTONIC_BIN:-}" ]]; then
  tectonic_bin="$TECTONIC_BIN"
elif command -v tectonic >/dev/null 2>&1; then
  tectonic_bin="$(command -v tectonic)"
else
  bundled_tectonic="$HOME/.codex/.tmp/bundled-marketplaces/openai-bundled/plugins/latex/bin/tectonic"
  if [[ ! -x "$bundled_tectonic" ]]; then
    printf 'Tectonic was not found. Install it or set TECTONIC_BIN.\n' >&2
    exit 1
  fi
  tectonic_bin="$bundled_tectonic"
fi

mkdir -p "$output_dir"
cd "$cv_dir"
"$tectonic_bin" -o "$output_dir" Alexander_Alexiev_CV.tex

