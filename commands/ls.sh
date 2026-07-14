#!/usr/bin/env bash
# Docs: https://man7.org/linux/man-pages/man1/ls.1.html

NAME="ls"
SYNTAX="ls [OPTION]... [FILE]..."
DESCRIPTION="List files and directories."
DETAILS="Use ls to inspect the contents of directories. By default, it lists the
current working directory, but you can also specify another directory.

It is one of the most frequently used Linux commands."

example "" "List files in the current directory."
example "/workspace" "List files in a specific directory."
example "-l" "Long listing format."
example "-a" "All files (including hidden files)."
example "-lh" "Human-readable file sizes."
example "-la" "Long listing + all files."
example "-lt" "Sort by modification time."
example "-lr" "Reverse the sort order."
example "-lS" "Sort by file size."
example "-R" "Recursively list subdirectories."
example "-A" "Almost all (exclude . and ..)."
example "-F" "Classify entries (/ for dirs, * for executables, etc.)."
example "-i" "Show inode numbers."
example "-1" "One entry per line."
