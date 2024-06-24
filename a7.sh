#!/bin/bash

# Get the string input from the user
read -p "Enter a string: " input_string

# Check if the string is equal to its reverse using rev
if [[ "$input_string" == "$(rev <<< "$input_string")" ]]; then
  echo "The string '$input_string' is a palindrome."
else
  echo "The string '$input_string' is not a palindrome."
fi
