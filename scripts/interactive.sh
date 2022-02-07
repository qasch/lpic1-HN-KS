#!/usr/bin/env bash

read -p "Soll ich das wirklich machen? [ja/nein]" antwort

echo
echo Eingabe: $antwort
echo

antwort_lower=$(echo $antwort | tr [:upper:] [:lower:])
# nur in bash:
# antwort_lower=${antwort,,}
 
# sh syntax
if [ $antwort_lower = 'ja' -o $antwort_lower = 'j' ]; then
  echo "OK, alles wird geloescht! (sh syntax)"
else
  echo "Na gut, dann nicht.\n"
  echo "...und tschüss."
fi

echo

# bash syntax mit regex
if [[ $antwort =~ ^[Jj][Aa]?$ ]]; then
  echo "OK, alles wird geloescht! (RegEx)"
else
  echo "Na gut, dann nicht."
fi

