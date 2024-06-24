#!/bin/bash

# Get the directory path (change this to your desired directory)
dir="/home/diot/Linux/new/Assignment 1"

# Check if a directory is provided
if [ -z "$dir" ]; then
  echo "Error: Please specify a directory path as an argument."
  exit 1
fi

# Loop through all files ending with ".txt" in the directory
for file in "$dir"/*.txt; do
  # Get the filename without the extension
  filename="${file%.*}"
  # Rename the file with the new extension
  mv "$file" "$filename.bak"
done

echo "Successfully renamed all .txt files to .bak in $dir"
