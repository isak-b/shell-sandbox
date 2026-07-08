#!/usr/bin/env bash
source "$(dirname "$0")/../helpers/run.sh"

# ls [options] [file|dir]

echo "=== ls: List files in the current directory ==="
run ls

echo "=== ls: List files in a specific directory ==="
run ls /Users

echo "=== -l: long listing format ==="
run ls -l

echo "=== -a: all files (including hidden files) ==="
run ls -a

echo "=== -h: human-readable file sizes ==="
run ls -lh

echo "=== -la: long listing + all files ==="
run ls -la

echo "=== -t: sort by modification time ==="
run ls -lt

echo "=== -r: reverse the sort order ==="
run ls -lr

echo "=== -S: sort by file size ==="
run ls -lS

echo "=== -R: recursive (include subdirectories) ==="
run ls -R

echo "=== -A: almost all (exclude . and ..) ==="
run ls -A

echo "=== -F: classify entries (/ for dirs, * for executables, etc.) ==="
run ls -F

echo "=== -i: show inode numbers ==="
run ls -i

echo "=== -1: one entry per line ==="
run ls -1
