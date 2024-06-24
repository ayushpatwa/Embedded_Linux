#!/bin/bash

# Get the directory path from the first argument
directory="/home/diot/Linux/new/Assignment 1"

# Check if a directory is provided
if [ -z "$directory" ]; then
  echo "Please specify a directory as an argument."
  exit 1
fi

# Find files modified in the last 24 hours (less than 1 day ago)
find "$directory" -type f -mtime -1 -print

# -mtime -1: modified less than 1 day ago (within the last 24 hours)

