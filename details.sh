#!/bin/bash

# Change the size of the file1.txt to "1000".
truncate -s 1000 file1.txt

#Change the permissions of the file1.txt to -rw------- --> 600
chmod 600 file1.txt

#Update both MODIFICATION and ACCESS TIME of the file1.txt to "2022-01-01"
touch -t 202201010000.00 file1.txt