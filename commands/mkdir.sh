#!/usr/bin/env bash
# Docs: https://man7.org/linux/man-pages/man1/mkdir.1.html

NAME="mkdir"
SYNTAX="mkdir [OPTION]... DIRECTORY..."
DESCRIPTION="Create directories."
DETAILS="Use mkdir to create one or more directories.

By default, mkdir creates only the final directory in the path. If any
parent directories do not exist, the command fails unless you use the
-p option.

Directories are created relative to the current working directory unless
an absolute path is specified."

example "some_dir" "Create a directory."
example "-v" "another_dir" "Verbose (print a message for each created directory)."
example "-p" "parent/child/grandchild" "Parents (create parent directories as needed)."
example "-m" "700 private_dir" "Mode (set directory permissions)."
example "-pv" "another/path/to/directory" "Parents + verbose."

sandbox_effect() {
    before=$(mktemp)
    after=$(mktemp)

    snapshot > "$before"
    command -p mkdir "$@"
    snapshot > "$after"
    new_entries "$before" "$after"
    rm "$before" "$after"
}
