#!/bin/bash

MY_MESSAGE='Hello World'
MY_NUM=100
MY_PI=3.142

export MY_MESSAGE
export MY_NUM
export MY_PI

#^... désigne le début d'une ligne et la chaine de caractères qui suit 
printenv | grep -E '^MY_NUM=|^MY_PI=|^MY_MESSAGE='