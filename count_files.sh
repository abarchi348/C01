#!/bin/bash

# Demander à l'utilisateur d'entrer le chemin d'un répertoire
read a 
# Vérifier que le chemin entré est bien un répertoire
n="$(ls "$a" | wc -l)"
b=$(echo $n)
echo "Le répertoire $a contient $b fichier(s)."