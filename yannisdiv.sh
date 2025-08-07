#!/bin/bash

if [[ -z "$1" || -z "$2" ]];then
    echo "Error: two numbers must be provided"
    
else
    if ! [[ "$1" =~ ^[0-9]+([.][0-9]+)?$ || "$2" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: both arguments must be numeric"
        else    
            if [[ "$1" == 0 || "$2" == 0 ]]; then
                echo "Error: division by zero is not allowed"
              
                else
                    resultat=$(echo "$1" / "$2" | bc -l )
                    resultat=$(echo "$resultat" | sed 's/\.0*$//;s/\.\([0-9]*[1-9]\)0*$/.\1/')
                    resultat=$(echo $resultat | cut -d. -f1)
                    echo "$resultat"
            fi
    
    fi
fi