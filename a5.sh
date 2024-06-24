#!/bin/bash

# Get the directory path
read -p "Enter the directory path: " dir_path

# Count the number of files and directories
num_files=0
num_dirs=0

# Function to count files and directories
count_files_and_dirs() {
    for entry in "$1"/*; do
        if [ -d "$entry" ]; then
            num_dirs=$((num_dirs + 1))
            count_files_and_dirs "$entry"
        elif [ -f "$entry" ]; then
            num_files=$((num_files + 1))
        fi
    done
}

# Call the function
count_files_and_dirs "$dir_path"

# Print the result
echo "Number of files: $num_files"
echo "Number of directories: $num_dirs"
