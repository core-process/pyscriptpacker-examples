#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

ROOT="$(realpath "$( dirname "${BASH_SOURCE[0]}" )")"

# clear dist directory
rm -rf "$ROOT/dist"
mkdir -p "$ROOT/dist"

# pack
npx -q pyscriptpacker@latest "2.7" "$ROOT/dist/example_exec.py" "example_exec" "example_exec" "$ROOT/src"
