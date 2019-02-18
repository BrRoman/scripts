#!/bin/sh
 
convert -density 300 -trim $1 -quality 100 tmp.tiff
cuneiform -l fra -f text -o ${1%%.pdf}.txt tmp.tiff
rm tmp.tiff
