#!/bin/bash

cat >> ~/.bashrc <<EOL
alias custom-ls='ls -lasS --no-group'
EOL

source ~/.bashrc