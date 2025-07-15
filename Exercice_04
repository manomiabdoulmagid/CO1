#!/bin/bash

# Version avec df -h pour les systèmes de fichiers montés
echo "=== Utilisation des disques (df -h) ==="
df -h | awk 'NR==1 || /\/dev\//'

# Version avec du -h pour analyser un répertoire spécifique
echo -e "\n=== Analyse de l'espace disque (du -h) ==="

if [ $# -eq 1 ]; then
    target_dir="$1"
    if [ -d "$target_dir" ]; then
        echo "Top 5 des plus gros répertoires dans $target_dir:"
        du -h "$target_dir" | sort -rh | head -5
    else
        echo "Erreur: $target_dir n'est pas un répertoire valide"
    fi
else
    echo "Analyse du répertoire courant:"
    du -h --max-depth=1 2>/dev/null | sort -h
fi

echo -e "\n=== Résumé ==="
echo "Espace total utilisé: $(df -h --output=used / | tail -1)"
echo "Espace disponible: $(df -h --output=avail / | tail -1)"
