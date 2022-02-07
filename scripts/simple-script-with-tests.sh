#!/bin/sh

var=hallo
VARIABLE=duda

set +x 

# Identisch:
#if test $# -eq 3
if [ $# = 3 ]
# mit zusätzlichen Funktionen (nur BASH)
#if [[ $# == 3 ]]

then
	echo "Das Skript wurde aufgerufen mit dem ersten Parameter: $1"
	echo "Das Skript wurde aufgerufen mit dem zweiten Parameter: $2"
	echo "Das Skript wurde aufgerufen mit dem dritten Parameter: $3"
elif [ $# -eq 2 ]; then
	echo "Das Skript wurde aufgerufen mit dem ersten Parameter: $1"
	echo "Das Skript wurde aufgerufen mit dem zweiten Parameter: $2"
else
	echo "Es wurden keine 3 Argumente übergeben"
fi



echo
echo '$*: Alle dem Skript übergebenen Argumente: '$*
echo '$@: Alle dem Skript übergebenen Argumente, wenn Variable in Doublequotes ("$@"), werden auch alle Argumente in Doublequotes eingefasst: '$@

echo
echo
echo 'Kommandosubstitution mit $(date):'
echo 'Ursprünglich `date`'
echo "Aktuelle Zeit: `date`"

echo 'Berechnungen mit $(( wert1 + wert2 ))'
echo 'Ursprünglich expr `wert1 + wert2`'
#result=$(( 14 + 5 ))
result1=`expr 14 + 5`
result2=$(expr 14 + 5)
result3=$(( 14 + 5 ))
echo ${result1}
echo ${result2}
echo $result3
