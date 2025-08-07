#!/bin/bash

# Vérifier que le nombre d'arguments est suffisant
if (( $# < 2 )); then
    echo "Error: two numbers must be provided"
else
    # Vérifier que les arguments sont numériques
    if ! [[ "$1" =~ ^[0-9]+([.][0-9]+)?$ || "$2" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: both arguments must be numeric"
    elif [[ "$2" == 0 ]]; then
        # Vérifier la division par zéro
        echo "Error: division by zero is not allowed"
    else
        # Effectuer la division entière
        resultat=$(echo "$1 / $2" | bc -l)
        resultat=$(echo "$resultat" | sed 's/\.0*$//;s/\.\([0-9]*[1-9]\)0*$/.\1/')
        resultat=$(echo $resultat | cut -d. -f1)
        echo "$resultat"
    fi
fi
