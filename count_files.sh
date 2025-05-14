#!/bin/bash
# Demander à l'utilisateur d'entrer le chemin d'un répertoire
read a
# Compter les fichiers (exclut les dossiers)
  n=$(ls -p "$a" | grep -v / | wc -l)
  echo "Le répertoire '$a' contient $n fichier(s)."

