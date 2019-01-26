#!/bin/bash

ARG=$1
if [[ -d $ARG ]]; then
    cd "$1"
    find . -type f | sort | while read
    do
        NAME="${REPLY%.*}"
        convert "$REPLY" "$NAME".tiff
        convert "$NAME".tiff -colorspace CMYK "$NAME"_cmyk.tiff
        convert "$NAME"_cmyk.tiff -density 300 "$NAME"_cmyk_300dpi.tiff
    done
elif [[ -f $ARG ]]; then
    NAME="${ARG%.*}"
    convert "$ARG" "$NAME".tiff
    convert "$NAME".tiff -colorspace CMYK "$NAME"_cmyk.tiff
    convert "$NAME"_cmyk.tiff -density 300 "$NAME"_cmyk_300dpi.tiff
else
    echo 'Argument invalide !'
    exit 1
fi

