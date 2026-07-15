#!/usr/bin/env bash

NAME="mkdir"
SYNTAX="mkdir [OPTION]... DIRECTORY..."
DESCRIPTION="Create directories."
DETAILS="Use mkdir to create one or more directories.

By default, mkdir creates only the final directory in the path. If any
parent directories do not exist, the command fails unless you use the
-p option.

Directories are created relative to the current working directory unless
an absolute path is specified.

Docs: https://man7.org/linux/man-pages/man1/mkdir.1.html"

example "mkdir some_dir" "Create a directory."
example "-p parent/child/grandchild" "Create parent directories as needed."
example "-m 700 private_dir" "Set directory permissions."

flag "-v" "Verbose mode (print a message for each created directory)."
flag "-p" "Create parent directories as needed."
flag "-m" "Set directory permissions."

sandbox_effect() {
    command -p mkdir -v "$@"
}
