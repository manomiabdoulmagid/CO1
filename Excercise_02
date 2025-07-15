#!/bin/bash

# Vérifier le nombre d'arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <fichier> <chaine_a_rechercher>"
    exit 1
fi

fichier="$1"
chaine="$2"

# Vérifier si le fichier existe
if [ ! -f "$fichier" ]; then
    echo "Erreur: Le fichier '$fichier' n'existe pas."
    exit 1
fi

# Rechercher la chaîne avec grep
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
