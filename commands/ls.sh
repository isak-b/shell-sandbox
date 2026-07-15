#!/usr/bin/env bash

NAME="ls"
SYNTAX="ls [OPTION]... [FILE]..."
DESCRIPTION="List files and directories."
DETAILS="Use ls to inspect the contents of directories. By default, it lists the
current working directory, but you can also specify one or more files or
directories.

It is one of the most frequently used Linux commands.

Docs: https://man7.org/linux/man-pages/man1/ls.1.html"

example "ls" "List files in the current directory."
example "ls /workspace" "List files in a specific directory."

flag "-l" "Use the long listing format."
flag "-a" "Include hidden files."
flag "-h" "Print file sizes in a human-readable format."
flag "-t" "Sort by modification time."
flag "-r" "Reverse the sort order."
flag "-S" "Sort by file size."
flag "-R" "Recursively list subdirectories."
flag "-A" "Include hidden files except . and .."
flag "-F" "Append indicators to entries (/ for directories, * for executables, etc.)."
flag "-i" "Show inode numbers."
flag "-1" "Print one entry per line."
