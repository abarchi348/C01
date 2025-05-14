#!/bin/bash

# Demander à l'utilisateur d'entrer le chemin d'un répertoire
read -p "Entrez le chemin du répertoire :" a

# Vérifier que le chemin entré est bien un répertoire
if [ -d "$a" ]; then
  # Compter les fichiers (exclut les dossiers)
  n=$(ls -p "$a" | grep -v / | wc -l)
  echo "Le répertoire '$a' contient $n fichier(s)."
else
  echo "Erreur : '$a' n'est pas un répertoire valide."
fi


