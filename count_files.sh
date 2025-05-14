

#!/bin/bash

# Demander à l'utilisateur d'entrer le chemin d'un répertoire
read a

# Vérifier que le répertoire existe
if [ -d "$a" ]; then
  # Compter les fichiers (exclut les dossiers)
  n=$(ls -p "$a" | grep -v / | wc -l)
  echo "Le dossier '$a' contient $n fichier(s)."
else
  echo "Erreur : '$a' n'est pas un dossier valide."
fi
