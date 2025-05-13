#!/bin/bash

# Demander le nom du fichier
echo -n "Entrez le nom du fichier:"
read f
# Demander la chaîne de caractères à rechercher
echo -n "Entrez la chaîne de caractères à rechercher:"
read c
# Vérifier si la chaîne existe dans le fichier
if grep -q "$c" "$f"; then
    echo "La chaîne '$c' a été trouvée dans '$f'."
else
    echo "La chaîne '$c' n'a pas été trouvée dans '$f'."
fi
