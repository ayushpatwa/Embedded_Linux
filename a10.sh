##!/bin/bash

# Ask user to enter file name
read -p "Enter a filename: " filename

# if it is normal file 
if [ -f "$filename" ]; then
  echo "'$filename' is a regular file."
  # if it is directory
elif [ -d "$filename" ]; then
  echo "'$filename' is a directory."
else
  echo "'$filename' is neither a regular file nor a directory."
fi

