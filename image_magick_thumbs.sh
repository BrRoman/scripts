#!/bin/bash

FILE=$1
SIZE=$2
if [[ -d $FILE ]]; then
    cd "$1"
    find . -type f | sort | while read
    do
        NAME="${REPLY%.*}"
        convert -thumbnail "$SIZE"x "$NAME".jpg "$NAME"_thumb.jpg
    done
elif [[ -f $FILE ]]; then
    NAME="${FILE%.*}"
    convert -thumbnail "$SIZE"x "$NAME".jpg "$NAME"_thumb.jpg
else
    echo 'Argument invalide !'
    exit 1
fi

