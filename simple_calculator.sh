#!/bin/bash

# Fonction pour la somme
somme() {
  echo $(( $1 + $2 ))
}

# Fonction pour la différence
difference() {
  echo $(( $1 - $2 ))
}

# Fonction pour la multiplication
multiplication() {
  echo $(( $1 * $2 ))
}

# Fonction pour la division
division() {
  if [ "$2" -eq 0 ]; then
    echo "Erreur : division par zéro"
  else
    echo $(( $1 / $2 ))
  fi
}

# Lecture des entrées sur une seule ligne
read -p "Entrez deux nombres et un opérateur (ex: 5 3 +) : " a b op

# Appel de la bonne fonction selon l'opérateur
case "$op" in
  +)
    echo "Résultat : $(somme $a $b)"
    ;;
  -)
    echo "Résultat : $(difference $a $b)"
    ;;
  \*)
    echo "Résultat : $(multiplication $a $b)"
    ;;
  /)
    echo "Résultat : $(division $a $b)"
    ;;
  *)
    echo "Erreur : opérateur invalide. Utilisez +, -, *, ou /"
    ;;
esac
