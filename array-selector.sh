#!/bin/bash

colors=("red" "blue" "green" "white" "black")

#if exactly one argument is provided
if [ $# -ne 1 ]; then
  echo "Error"

#if the argument is a number
elif ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "Error"

#interpret the position 1 as the element in the array position 0.
elif [ $1 -lt 1 ] || [ $1 -gt ${#colors[@]} ]; then
  echo "Error"

#print the element at the position specified in the first argument passed to the script
else
  index=$(( $1 - 1 ))
  echo "${colors[$index]}"
fi

