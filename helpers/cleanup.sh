#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="$ROOT_DIR/output"

find "$OUTPUT_DIR" -mindepth 1 ! -name ".gitkeep" -exec rm -rf {} +

echo "Cleaned $OUTPUT_DIR"
