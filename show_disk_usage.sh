#!/bin/bash

# Ce code permet d'afficher l'utilisation disque 

echo "Utilisation globale du disque :" 
df -h 

echo "" 
echo "Utilisation du disque par dossier courant :" 
du -sh *