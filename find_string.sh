#!/bin/bash

# Ce code permet de Chercher une chaîne dans un fichier

read -p "Entrez le nom du fichier :" filename
read -p "Entrez le nom du chaine à chercher :" search

if grep -n "$search" "$filename"; then 
echo "La chaîne '$search' a été trouvée dans $filename." 
else 
echo "La chaîne '$search' n'a pas été trouvée dans $filename." 
fi