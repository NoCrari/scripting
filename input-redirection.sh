#!/bin/bash

cat > show-info.sh << 'EOF'
#!/bin/bash

# Here document correctement ouvert et fermé
cat -e << heredoc
The current directory is: $PWD
The default paths are: $PATH
The current user is: $USERNAME
heredoc
EOF

# Donner les droits d'exécution au script généré
chmod +x show-info.sh