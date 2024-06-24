#!/bin/bash


filename="ex.txt"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' does not exist."
  exit 1
fi

# Loop through the file line by line using a while loop and read
while IFS= read -r line; do
  # Reverse the line and print it
  echo "$(rev <<< "$line")"
done < "$filename"

