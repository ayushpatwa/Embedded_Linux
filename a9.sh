#!/bin/bash

# Get the pattern to search for from the user
read -p "Enter the pattern to search for: " pattern

# Define the starting directory (modify as needed)
dir="."

# Use find and grep to search recursively
find "$dir" -type f -print | while read filename; do
  if grep -q "$pattern" "$filename"; then
    # File contains the pattern
    echo "Found '$pattern' in: $filename"
  fi
done

echo "Search completed."
