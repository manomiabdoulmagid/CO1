#!/bin/bash 

# Ce code permet d'effectuer une opération arithmétique entre deux nombres

read -p "Entrez l'expression (num1 num1 op):" expression

result=$(echo "$expression" | awk '{ 
    if ($3 == "+") print $1 + $2;
    else if ($3== "-") print $1 $2;
    else if ($3== "*") print $1 $2; 
    else if ($3== "/") print $1 / $2; 
    else print "Opérateur non supporté"; 
}')

 echo "Résultat $result"
