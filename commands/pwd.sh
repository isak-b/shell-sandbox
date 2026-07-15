#!/usr/bin/env bash

NAME="pwd"
SYNTAX="pwd [OPTION]..."
DESCRIPTION="Print the current working directory."
DETAILS="Use pwd to display the full path of the current working directory.

This is useful for checking where you are before creating, moving, or
deleting files.

Docs: https://man7.org/linux/man-pages/man1/pwd.1.html"

example "" "Print the current working directory."
example "-L" "Print the logical working directory, preserving any symbolic links that were used to get there."
example "-P" "Print the physical directory, resolving any symbolic links that were used to get there."
