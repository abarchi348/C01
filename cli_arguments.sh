#!/bin/bash
read  arg 
set -- "${arg[@]}"
# Affichage des arguments avec $1, $2, ... et shift
index=1
while [ "$1" ]; do
    echo "Argument $index : $1"
    shift
    index=$((index + 1))
done
