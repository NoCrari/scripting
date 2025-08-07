#!/bin/bash

#execute a job in the background that will run the command ls 
#which will recursively list all files and directories in the current directory and its subdirectories
#command & (pour lancer en bg)
ls -R | grep "\.txt$" && echo "Search complete" > new & 


#After the search is complete, you must redirect to a file "new" the following string "Search complete". 
#You also need to List all background jobs.
jobs