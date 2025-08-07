#!/bin/bash

#initialise le guess nbr et va lire l'entrée
guess=0

#test pour l'entrée de 1 SEUL argument seulement
if (( $# < 1 )); then
    echo "Error: wrong argument"
    exit 1
fi

if [[ ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: wrong argument"
    exit 1
fi

#test si guess est dans 1 ou 100
if [[ "$1" -gt 100 ]] || [[ "$1" -lt 1 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

number=$1
try=5

for (( try=5; try>0; ))
do
    echo "Enter your guess ($try tries left):"
    read guess

    # Vérifier si l'entrée est vide
    if [[ -z "$guess" ]]; then
        #((try++))
        continue
    fi

    # Vérifier si l'entrée est un nombre valide
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        #((try++))
        continue
    fi

    if [[ "$guess" -gt 100 ]] || [[ "$guess" -lt 1 ]]; then
        #((try++))
        continue
    fi

    if (( guess < number )); then
        echo "Go up"
    elif (( guess > number )); then
        echo "Go down"
    elif (( guess == number )); then
        echo "Congratulations, you found the number in $((6 - try)) moves!"  # Affiche le nombre de tentatives utilisées
        exit 0  # Quitter le jeu dès que le bon nombre est trouvé
    fi

    (( try-- ))
done

#sort de la boucle for donc echec
echo "You lost, the number was $number"
    
