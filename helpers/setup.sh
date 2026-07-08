#!/usr/bin/env bash
source "$(dirname "$0")/../helpers/cleanup.sh"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPT_NAME="$(basename "$0" .sh)"
OUTPUT_DIR="$ROOT_DIR/output/$SCRIPT_NAME"

mkdir -p "$OUTPUT_DIR"

cd "$OUTPUT_DIR" || exit 1
