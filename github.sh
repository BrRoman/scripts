#!/bin/bash



#############################################################
# This script pushes local sites to Github and fetch remotes.
#############################################################


# ------------------------
# My sites and apps:

echo
echo "--------------------"
echo
echo "absences:"
cd "/media/fr_romain/DATA/Sites/absences/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "accenteur:"
cd "/media/fr_romain/DATA/Sites/accenteur/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "editor:"
cd "/media/fr_romain/DATA/Editions/editor/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "hotellerie:"
cd "/media/fr_romain/DATA/Sites/hotellerie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "infirmerie:"
cd "/media/fr_romain/DATA/Sites/infirmerie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "liturgie:"
cd "/media/fr_romain/DATA/Documents/Liturgie/liturgie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "livrets:"
cd "/media/fr_romain/DATA/Sites/livrets/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "missa:"
cd "/media/fr_romain/DATA/Sites/missa/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ordomatic:"
cd "/media/fr_romain/DATA/Sites/ordomatic/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ordomatic_flavigny:"
cd "/media/fr_romain/DATA/Sites/ordomatic_flavigny/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ornitho:"
cd "/media/fr_romain/DATA/Sites/ornitho/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "psaumes:"
cd "/media/fr_romain/DATA/Documents/Sainte_Ecriture/3 Ancien Testament/Cours sur les Psaumes/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "scripts:"
cd "/media/fr_romain/DATA/Documents/Informatique/Scripts/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "statistiques:"
cd "/media/fr_romain/DATA/Sites/statistiques/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "typetrainer:"
cd "/media/fr_romain/DATA/Sites/typetrainer/"
git push origin
git st
git lg -10



# ------------------------
# Forks:

echo
echo "--------------------"
echo
echo "collatinus:"
cd "/media/fr_romain/DATA/Documents/Langues/Latin/Collatinus/collatinus/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "divinum-officium:"
cd "/media/fr_romain/DATA/Documents/Liturgie/divinum-officium/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "gregorio:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "gregorio site:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio-doc/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "jgabc:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/jgabc/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "latin-ecclesiastic-accents:"
cd "/media/fr_romain/DATA/Documents/Langues/Latin/latin-ecclesiastic-accents/"
git fetch upstream
git push origin
git push upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "pencil"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/pencil/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "php-barcode:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/php-barcode"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "summernote:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/summernote"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "tcpdf:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/tcpdf"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "zeal:"
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/zeal/"
git fetch upstream
git st
git lg -10
