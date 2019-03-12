#!/bin/bash

ARG=$1
if [[ -d $ARG ]]; then
    cd "$1"
    find . -type f | sort | while read
    do
        NAME="${REPLY%.*}"
        convert -thumbnail 128x "$NAME".jpg "$NAME"_thumb.jpg
    done
elif [[ -f $ARG ]]; then
    NAME="${ARG%.*}"
    convert -thumbnail 128x "$NAME".jpg "$NAME"_thumb.jpg
else
    echo 'Argument invalide !'
    exit 1
fi

