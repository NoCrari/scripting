#!/bin/bash

#Run the command cat on the file facts 
#which will read the contents of the file and print it to stdout.

nohup bash -c 'cat facts | grep "moon" && echo "The moon fact was found!" > output.txt' &
