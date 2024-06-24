#!/bin/bash

# Get the number from the user
read -p "Enter a non-negative integer: " number

# Check if the number is negative
if [[ $number -lt 0 ]]; then
  echo "Error: Factorial is not defined for negative numbers."
  exit 1  # Indicate error by exiting with non-zero status
fi

# Calculate the factorial using a loop
factorial=1
for (( i=1; i<=$number; i++ )); do
  factorial=$(( factorial * i ))
done

# Display the result
echo "The factorial of $number is $factorial."
