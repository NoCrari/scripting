#!/bin/bash

MY_MESSAGE='Hello World'
MY_NUM=100
MY_PI=3.142
MY_ARR=(one two three four five)

printf "%s\n" "$MY_MESSAGE"
printf "%i\n" "$MY_NUM"
#printf "%.2f\n" "$MY_PI"
LC_NUMERIC=C printf "%.3f\n" "$MY_PI"
#printf "%s\n" "${MY_ARR[@]}"

for ((i = 0; i < ${#MY_ARR[@]}; i++)); do
    if [ $i -eq 0 ]; then
        printf "%s" "${MY_ARR[$i]}"
    else
        printf ", %s" "${MY_ARR[$i]}"
    fi
done
printf "\n"