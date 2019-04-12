#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please supply path to search(and clean) under"
    exit 1
fi

MYPATH=$1

find "$MYPATH" -name *.jpg > /tmp/patterns
find "$MYPATH" -name *.png >> /tmp/patterns
find "$MYPATH" -name *.gif >> /tmp/patterns
find "$MYPATH" -name *.svg >> /tmp/patterns

for p in $(cat /tmp/patterns); do
    IFS='/' read -ra ADDR <<< "$p"
    f=${ADDR[-1]}
    if grep -R $f "$MYPATH" > /dev/null; then
         echo $f exists
    else
         echo $f not found
         rm -rf "$PWD/$p"
         echo deleted $PWD/$p
    fi
done


