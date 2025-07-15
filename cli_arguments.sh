#!/bin/bash

# Vérifier qu'il y a au moins un argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <argument1> <argument2> ..."
    exit 1
fi

# Initialiser le compteur
count=1

# Parcourir tous les arguments
for arg in "$@"; do
    echo "Argument $count: $arg"
    ((count++))
done
