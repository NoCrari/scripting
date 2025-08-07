#!/bin/bash

# if a filename is provided
if [ $# -ne 1 ]; then
  echo "Error: No file provided"
fi

filename=$1

# if file exists
if [ -e "$filename" ]; then
  echo "File exists"

    # if file is readable
    if [ -r "$filename" ]; then
        echo "File is readable"
    else
        echo "File is not readable"
    fi

    # if file is writable
    if [ -w "$filename" ]; then
        echo "File is writable"
    else
        echo "File is not writable"
    fi

    # if file is executable
    if [ -x "$filename" ]; then
        echo "File is executable"
    else
        echo "File is not executable"
    fi

else
  echo "File does not exist"
fi
