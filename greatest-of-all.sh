#!/bin/bash

#max pour le check comparaison des valeurs
max=0
#count pour le seuil de valeurs à rentrer
count=0

# Boucle jusqu à 10 nombres
while [ $count -lt 10 ]; do
    # Saisie du nombre
    read -p 'Enter your number: ' number

    # if input is a positive number (int)
    if ! [[ $number =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 1
    fi

    # if number is greater than 10000
    if [ $number -gt 10000 ]; then
        echo "ERROR: The number entered is too large"
        exit 1
    fi

    # Compare to find the maximum
    if [ $number -gt $max ]; then
        max=$number
    fi

    # Increment count
    count=$((count + 1))
done

# Print the largest number
echo "The largest number is: $max"