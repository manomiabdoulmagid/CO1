#!/bin/bash
#demander d'entrer le chemin du repertoire
read myfolder
#compter le nombres de fichiers dans le repertoire
file_count_calc=$(ls "$myfolder"|wc -l)
num_files=$(echo "$file_count_calc")
echo ""
echo "Le dossier $myfolder contient $num_files fichier(s)."
