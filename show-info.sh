#!/bin/bash

# Here document correctement ouvert et fermé
cat -e << heredoc
The current directory is: $(pwd)
The default paths are: $PATH
The current user is: $USER
heredoc
