#!/bin/bash

#After the number is set, the script will ask you to introduce the "names" and "grades" of the persons you wish to evaluate.
#Ask an argument, for the user to give a specific number of students in order to evaluate them
i=$1
counter=1


#Test if wrong number of arguments
if (( $# != 1 )); then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi


#Tableaux stockant les names et grades
declare -a names
declare -a grades

while [[ $i -gt 0 ]]; do

    #ask student name 
    read name
    read grade

    #If not positive int OR not between 0 and 100 
    if ! [[ $grade =~ ^[0-9]+$ ]] || (( grade < 0 || grade > 100 )); then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1

    fi
    names+=("$name")
    grades+=("$grade")
  
    ((counter++))
    ((i--))
done

for ((j=0; j<${#names[@]}; j++)); do

    name=${names[$j]}
    grade=${grades[$j]}
    
    #If the student grade is anything equal or greater than 90 you will return the string
    if [ $grade -ge 90 ];then
        echo "$name: You did an excellent job!"
        
    #If the student grade is anything equal or greater than 70 you will return the string
    elif [ $grade -ge 70 ];then
        echo "$name: You did a good job!"

    #If the student grade is anything equal or greater than 50 you will return the string
    elif [ $grade -ge 50 ];then
        echo "$name: You need a bit more effort!"

    #If the student grade is anything lower than 50 you will return the string 
    else
        echo "$name: You had a poor performance!"
    fi

done