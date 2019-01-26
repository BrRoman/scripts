#!/bin/bash

ARG=$1
if [[ -d $ARG ]]; then
    cd "$1"
    find . -type f | sort | while read
    do
        NAME="${REPLY%.*}"
        convert -thumbnail 1000x "$NAME".jpg "$NAME"_light.jpg
    done
elif [[ -f $ARG ]]; then
    NAME="${ARG%.*}"
    convert -thumbnail 1000x "$NAME".jpg "$NAME"_light.jpg
else
    echo 'Argument invalide !'
    exit 1
fi

