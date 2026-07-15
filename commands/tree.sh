#!/usr/bin/env bash

NAME="tree"
SYNTAX="tree [OPTION]... [DIRECTORY...]"
DESCRIPTION="Display directories and files as a tree."
DETAILS="Use tree to recursively display the contents of one or more
directories as a tree.

If no directory is specified, tree displays the current working
directory. Each level of the directory hierarchy is indented to make the
structure easy to read.

Docs: https://manpages.ubuntu.com/manpages/noble/en/man1/tree.1.html"

example "" "Display the current directory as a tree."
example "some_dir" "Display a specific directory."
example "-L" "2" "Limit the display to two directory levels."
example "-d" "Show only directories."
example "-a" "Include hidden files and directories."
