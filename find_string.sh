#!/bin/bash

read f
read c
# Vérifier si la chaîne existe dans le fichier
if grep  "$c" "$f"; then
    echo "La chaîne '$c' a été trouvée dans $f."
else
    echo "La chaîne '$c' n'a pas été trouvée dans $f."
fi