#!/bin/bash

cd '/home/fr_romain/Desktop/L1300'
find . -type f -name '*.tif' | sort | while read
do
    f=`echo "$REPLY"`
    fn=`echo "$REPLY" | sed 's/F...\.tif/F.tif/g'`
    #echo "$fn"
    mv "$f" "$fn"
done

