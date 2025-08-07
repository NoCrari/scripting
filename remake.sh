#!/bin/bash

#use touch -t DATE <file-path> /// DATE = [[CC]YY]MMDDhhmm[.ss]
#take one argument, the relative path of a directory
 
#and will create new files and directories in it.
if [[ -d $1 ]]; then
    
    mkdir mamma
    mkdir mi
    
    touch -t 0101010001 $1/ciao
    touch -t 0101020001 $1/mamma
    touch -t 0101030001 $1/guarda
    touch -t 0101040001 $1/come
    touch -t 0101050001 $1/mi
    touch -t 0101060001 $1/diverto

else 
    printf "Error\n"
    exit 1
fi