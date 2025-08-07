#!/bin/bash

#awk 

ls -l --time-style=+"%Y-%m-%d %H:%M" . | awk 'NR>1 {print $1, $6, $7, $8}'