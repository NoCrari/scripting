#!/bin/bash

# Créer le dossier ~/myBins s'il n'existe pas
mkdir -p ~/myBins

# Créer le binaire 01exec avec cat et redirection
cat > ~/myBins/01exec << 'EOF'
#!/bin/bash

printf "Hello 01 Scripting Pool\n"
EOF

# Rendre le binaire exécutable
chmod +x ~/myBins/01exec

export PATH="$PATH:$HOME/myBins"
