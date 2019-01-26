#!/bin/bash

export_php(){
    echo
    echo -----------------------
    echo $1
    rsync -rptgovDL -ssh --exclude-from='/home/fr_romain/Scripts/exclude_patterns.rsync' ~/Sites/$1 fr_romain@192.168.1.21:/home/fr_romain/sites/$2
}
export_php "absences_php/" "absences/"
export_php "accenteur/" "accenteur/"
export_php "accueil/" ""
export_php "barcode_js/" "barcode_js/"
export_php "barcode_php/" "barcode_php/"
export_php "courses/" "courses/"
export_php "editor/" "editor/"
export_php "gregorio-doc/" "gregorio-doc/"
export_php "gregorio-jgabc/" "gregorio-jgabc/"
export_php "livrets/" "livrets/"
export_php "missa/" "missa/"
export_php "ordomatic/" "ordomatic/"
export_php "ornitho/" "ornitho/"
export_php "sql/" "sql/"


echo
echo -----------------------
echo "Éditions/"
rsync -rptgovDL -ssh  ~/Editions/ fr_romain@192.168.1.21:/home/fr_romain/Éditions/
