#!/usr/bin/env bash

NAME="touch"
SYNTAX="touch [OPTION]... FILE..."
DESCRIPTION="Create empty files or update file timestamps."
DETAILS="Use touch to create one or more empty files if they do not already
exist.

If a file already exists, touch updates its access and modification
timestamps without changing its contents.

Multiple files can be created or updated with a single command.

Docs: https://man7.org/linux/man-pages/man1/touch.1.html"

example "notes.txt" "Create an empty file."
example "file1.txt file2.txt" "Create multiple empty files."
example "-c" "existing.txt" "Do not create a file, only update its timestamps."
example "-t" "202401011200 timestamp.txt" "Set the file timestamp to a specific date and time."
example "-r" "reference.txt copy.txt" "Use the timestamps from another file."

sandbox_effect() {
    before=$(mktemp)
    after=$(mktemp)

    snapshot > "$before"
    command -p touch "$@"
    snapshot > "$after"
    new_entries "$before" "$after"

    rm "$before" "$after"
}
