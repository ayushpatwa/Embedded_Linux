#!/bin/bash

# Get the filename from the user
read -p "Enter the filename: " filename

# Check if the file exists using the test command with -f option
if [ -f "$filename" ]
then
  # Display the contents of the file
  cat "$filename"
else
  # File not found, display an error message
  echo "Error: File '$filename' not found."
fi
