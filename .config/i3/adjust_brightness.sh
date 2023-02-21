#!/bin/bash

# Check if a parameter was provided
if [ -z "$1" ]; then
  echo "Error: No parameter provided."
  exit 1
fi

# Read the number from the file
number=$(cat /sys/class/backlight/intel_backlight/brightness)

# Calculate the new number by adding or subtracting the parameter
new_number=$((number $1))

# Write the modified number back to the file
echo $new_number > /sys/class/backlight/intel_backlight/brightness
