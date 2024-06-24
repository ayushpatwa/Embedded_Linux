#!/bin/bash

# Read the number from the user
read -p "Enter a number: " number

# Check if the number is even using the modulo operator (%)
if [ $(($number % 2)) -eq 0 ]; then
  echo "$number is even."
else
  echo "$number is odd."
fi
