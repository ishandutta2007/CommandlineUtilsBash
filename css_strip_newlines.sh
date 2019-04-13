#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please supply path to strip new lines under"
    exit 1
fi

MYPATH=$1

find "$MYPATH" -name *.scss > /tmp/patterns
find "$MYPATH" -name *.css >> /tmp/patterns

for p in $(cat /tmp/patterns); do
    sed -i '' '/^$/d' $p
done
