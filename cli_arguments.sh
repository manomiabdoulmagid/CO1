#!/bin/bash
# Ce script affiche chaque argument passé en ligne de commande, un par ligne.

read -a "args" 
i=1 
for arg in "${args[@]}"; do 
    echo "Argument $i: $arg" 
    ((i++)) 
done 