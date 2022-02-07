#!/bin/sh


echo "Hallo, ich bin ein Skript,"

echo "Wichtige Variablen für Skripte:"

echo '$0: Name des Skripts: '$0
echo '$!: PID des zuletzt ausgeführten Kommandos: '$!
echo '$$: PID der aktuellen Shell: '$$
echo
echo '$?: Rückgabewert des zuletzt ausgeführten Kommandos: '$?
echo
echo '$#: Anzahl der übergebenen Parameter: '$#
echo
echo "Das Skript wurde aufgerufen mit dem ersten Parameter: $1"
echo "Das Skript wurde aufgerufen mit dem zweiten Parameter: $2"
echo "Das Skript wurde aufgerufen mit dem zweiten Parameter: $3"
echo
echo '$*: Alle dem Skript übergebenen Argumente: '$*
echo '$@: Alle dem Skript übergebenen Argumente, wenn Variable in Doublequotes ("$@"), werden auch alle Argumente in Doublequotes eingefasst: '$@
