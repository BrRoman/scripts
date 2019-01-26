#!/bin/bash

cd "/home/fr_romain/Pictures/"
find . -name '*embedded_1.jpg' -o -name '*.jpg.xmp' | while read
do
    echo "$REPLY"
    rm "$REPLY"
done
