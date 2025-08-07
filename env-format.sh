#!/bin/bash

# awk -F'=' : indique que le séparateur de champ '='
#$1 ~ /H/ : sélectionne les lignes dont le nom de la variable ($1) contient la lettre H.
#{ print $1 } : affiche que le nom de la variable, sans sa valeur.

printenv PWD && printenv | awk -F'=' '$1 ~ /H/ { print $1 }'