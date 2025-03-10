#! bin/bash

# This script installs fonts into /usr/share/fonts.
# Paste it into root folder, and launch it.

# Opentype:
cd /usr/share/fonts/opentype/
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/Arno\ Pro/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/Brioso\ Pro/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/Garamond\ Premier\ Pro/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/ITC\ Leawood\ Std/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/Lucida\ Calligraphy .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/PlantinStd/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/otf/Silentium\ Pro/ .

# Truetype:
cd /usr/share/fonts/truetype/
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Apple\ Chancery\ Regular.ttf .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Arial/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Calibri/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/FlavGaramond/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/GregPlantin/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Leo/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Menlo-Regular.ttf .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/SILEOT.ttf .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/times.ttf .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/Times\ New\ Roman/ .
cp -r /media/frromain/DATA/Documents/Informatique/Texte/Polices\ pour\ installation/ttf/TR\ Lucida\ Handwriting\ Italic.ttf .

fc-cache -fv

