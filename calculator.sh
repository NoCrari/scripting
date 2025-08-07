#!/bin/bash
#$1 1st nbr
nb1=$1

#$2 operator

#$3 2nd nbr
nb2=$3

# Vérification du nombre d'arguments
if (( $# != 3 )); then
    echo "Error: expect 3 arguments"
    exit 1
fi
# Vérifier que les arguments sont numériques
if ! [[ "$nb1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$nb2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: invalid number"
    exit 4
fi


#LES FONCTIONS OPERATORS
do_add() {
    # Effectuer l'addition
    result=$((nb1 + nb2))
    echo "$result"
}

do_sub() {
    # Effectuer la soustraction
    result=$(echo "scale=2; $nb1 - $nb2" | bc -l)
    result=$(echo "$result" | sed 's/\.[0-9]*$//')
    echo "$result"
}

do_mult() {
    # Effectuer la multiplication
    result=$(echo "scale=2; $nb1 * $nb2" | bc -l)
    result=$(echo "$result" | sed 's/\.[0-9]*$//')
    echo "$result"
}

do_divide() {
    # Vérification de la division par zéro
    if [[ "$nb2" == 0 ]]; then
        echo "Error: division by 0"
        exit 2
    fi

    # Effectuer la division
    result=$(echo "scale=2; $nb1 / $nb2" | bc -l)

    # Enlever les zéros inutiles après la virgule si le résultat est un entier
    result=$(echo "$result" | sed 's/\.[0-9]*$//')
    
    echo "$result"
}

case $2 in
    "+")
        do_add
        ;;
    "-")
        do_sub
        ;;
    "*")
        do_mult
        ;;
    "/")
        do_divide
        ;;
    *)
        # printed in stderr
        >&2 echo "Error: invalid operator"
        exit 3
        ;;
esac