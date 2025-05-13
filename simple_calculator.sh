#!/bin/bash

# Lire les trois valeurs sur une seule ligne
read -p "Entrez deux nombres et un opérateur (ex: 5 3 +) : " a b op
# Effectuer l'opération selon l'opérateur
case "$op" in
  +)
    echo "Résultat : $((a + b))"
    ;;
  -)
    echo "Résultat : $((a - b))"
    ;;
  "*")
    echo "Résultat : $((a * b))"
    ;;
  /)
    if [ "$b" -eq 0 ]; then
      echo "Erreur : division par zéro"
    else
      echo "Résultat : $((a / b))"
    fi
    ;;
  *)
    echo "Erreur : Opérateur invalide. Utilisez +, -, *, ou /"
    ;;
esac
