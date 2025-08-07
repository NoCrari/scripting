#!/bin/bash

# Check if exactly two arguments are provided
if [ $# -ne 2 ]; then
  echo "Error: The script only works with two arguments!"

# Check if both arguments are numbers (positive or negative integers)
elif ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]+$ ]]; then
    echo "Error: Only two numeric arguments are acceptable!"
else
    # Compare the two numbers
    if [ $1 -gt $2 ]; then
        echo "$1 > $2"
    elif [ $1 -lt $2 ]; then
        echo "$1 < $2"
    else
        echo "$1 = $2"
    fi
fi