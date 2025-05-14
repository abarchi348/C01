#!/bin/bash

read a b op

if [ "$op" = "+" ]; then
    resultat=$(($a + $b))
elif [ "$op" = "-" ]; then
    resultat=$(($a - $b))
elif [ "$op" = "*" ]; then
    resultat=$(($a * $b))
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro"
        exit 1
    else
        resultat=$(($a / $b))
    fi
fi
echo "Résultat : $resultat"
exit 0