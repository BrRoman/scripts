#!/bin/bash

cd "/home/fr_romain/Pictures/"
find . -name '*embedded_1.jpg' -o -name '*.jpg.xmp' | sort | while read
do
    echo "$REPLY"
    rm "$REPLY"
done

# Remove .xmp files (Darktable) if no corresponding photo:
find . -name '*.xmp' | sort | while read
do
    if [[ ! -f "${REPLY%.xmp}" ]]; then
        echo "$REPLY"
        rm "$REPLY"
    fi
done
