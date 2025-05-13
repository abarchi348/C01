#!/bin/bash
read a
# Compter les fichiers avec ls et wc -l
n=$(ls -p "$a" | grep -v / | wc -l)
echo "Le répertoire '$a' contient $n fichier(s)."
