#!/bin/bash

# Vérifier qu'on a bien 3 arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <nombre2> <opérateur (+,-,*,/)>"
    exit 1
fi

# Récupérer les arguments
num1=$1
num2=$2
op=$3

# Vérifier que les arguments sont numériques
if ! [[ $num1 =~ ^[0-9]+$ ]] || ! [[ $num2 =~ ^[0-9]+$ ]]; then
    echo "Erreur: Les deux premiers arguments doivent être des nombres"
    exit 1
fi

# Effectuer l'opération demandée
case $op in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [ $num2 -eq 0 ]; then
            echo "Erreur: Division par zéro impossible"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
    *)
        echo "Erreur: Opérateur invalide. Utilisez +, -, * ou /"
        exit 1
        ;;
esac

# Afficher le résultat
echo "Résultat : $result"
