#!/bin/bash
# Ce script compte le nombre de fichiers dans un dossier donné

read folder

# Vérifie si le dossier existe
if [ -d "$folder" ]; then
  # Utilise find pour lister tous les fichiers (-type f), puis wc -l pour les compter
  count=$(find "$folder" -type f | wc -l)
  echo "Le dossier $folder contient $count fichier(s)."
else
  # Affiche un message d'erreur si le dossier n'existe pas
  echo "Le dossier $folder n'existe pas."
fi