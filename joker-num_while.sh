#!/bin/bash

# Check if the number of arguments is correct
# Check if its an integer between 1 and 100
if [[ $# -ne 1 ]] || [[ ! "$1" =~ ^[0-9]+$ ]] || [[ "$1" -lt 1 ]] || [[ "$1" -gt 100 ]]; then
  echo "Error: wrong argument"
  exit 1
fi

# Set the number to guess
number=$1

# Comptage du nbr de try
tries=5
number_of_tries=0

while [[ $tries -gt 0 ]]; do
    # Prompt the player to enter a guess
    echo "Enter your guess ($tries tries left):"
    read guess

    # Check if the guess is a valid number
    if [[ ! "$guess" =~ ^[0-9]+$ ]] || [[ "$guess" -gt 100 ]] || [[ "$guess" -lt 1 ]]; then
        continue  # Don't decrement tries if input is invalid
    fi

    # Increment the number of tries
    ((number_of_tries++))

    # Check if the guess is correct
    if [[ "$guess" -eq "$number" ]]; then
        echo "Congratulations, you found the number in $number_of_tries moves!"
        exit 0
    elif [[ "$guess" -lt "$number" ]]; then
        echo "Go up"
    else
        echo "Go down"
    fi

    # Decrease the number of tries left after a valid guess
    ((tries--))
done

# If the player runs out of tries, print the correct number
echo "You lost, the number was $number"