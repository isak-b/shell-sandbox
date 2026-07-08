#!/usr/bin/env bash
source "$(dirname "$0")/../helpers/run.sh"
source "$(dirname "$0")/../helpers/setup.sh"

# mkdir [options] directory

echo "=== mkdir <directory>: Create a directory ==="
run mkdir test
find ls

echo "=== -v: verbose (print a message for each created directory) ==="
run mkdir -v verbose

echo "=== -p: parents (create parent directories as needed) ==="
run mkdir -p parent/child/grandchild

echo "=== -m: mode (set permissions) ==="
run mkdir -m 700 private

echo "=== -pv: parents + verbose ==="
run mkdir -pv another/path/to/directory
