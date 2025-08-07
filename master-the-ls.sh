#!/bin/bash

# Triés par date d'accès (le plus récent en premier) -tu 
#-t     trier selon la date de modification
#-u avec -t,  trier  et  afficher selon la date de dernier accès ;
# Dossiers terminés par / --> -p ou --indicator=slash
# sed 's/,$/\n/' delete last comma
#tr -d ' ' → delete each spaces of the output.


ls -tu --indicator-style=slash | tr "\n" "," | sed 's/,$/\n/' | tr -d ' '