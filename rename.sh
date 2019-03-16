#!/bin/bash

cd '/home/fr_romain/Sites/ornitho/'
find . -type f -name '*.php' | sort | while read
do
    f=`echo "$REPLY"`
    fn=`echo "$REPLY" | sed 's/php/html/g'`
    #echo "$fn"
    mv "$f" "$fn"
done

