#!/bin/bash

#take 2 arguments and return information about the selected user, always ended by a new line.

#Check number of arguments
if [ "$#" -ne 2 ]; then
    echo "Error: expect 2 arguments" >&2
    exit 1
fi

flag=$1
username=$2

#Check if the flag is valid
if [ "$flag" != "-e" ] && [ "$flag" != "-i" ]; then
    echo "Error: unknown flag" >&2
    exit 1
fi

#if the user existss
if [ "$flag" == "-e" ]; then
    if getent passwd "$username" > /dev/null; then
        echo "yes"
    else
        echo "no"
    fi
#if user info exists then print it or print nothing
elif [ "$flag" == "-i" ]; then
    user_info=$(getent passwd "$username")
    if [ -n "$user_info" ]; then
        echo "$user_info"
    fi
fi
