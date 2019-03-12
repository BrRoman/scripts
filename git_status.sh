#!/bin/bash


# PERSO :

echo
echo '--------------------'
echo
echo 'absences:'
cd "/media/fr_romain/DATA/Sites/absences/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'editor:'
cd "/media/fr_romain/DATA/Editions/editor/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'liturgie:'
cd "/media/fr_romain/DATA/Documents/Liturgie/liturgie/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'livrets:'
cd "/media/fr_romain/DATA/Sites/livrets/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'missa:'
cd "/media/fr_romain/DATA/Sites/missa/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'ordomatic:'
cd "/media/fr_romain/DATA/Sites/ordo-project/ordomatic/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'ordomatic-flav:'
cd "/media/fr_romain/DATA/Sites/ordo-project/ordomatic-flav/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'ornitho:'
cd "/media/fr_romain/DATA/Sites/ornitho/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'scripts:'
cd "/home/fr_romain/Scripts/"
git st
git lg -10


# VIANNEY :

echo
echo '--------------------'
echo
echo 'compta:'
cd "/media/fr_romain/DATA/Sites/compta/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'woodadmin:'
cd "/media/fr_romain/DATA/Sites/woodadmin/"
git fetch upstream
git st
git lg -10


# FORKS :

echo
echo '--------------------'
echo
echo 'collatinus:'
cd "/media/fr_romain/DATA/Documents/Langues/Latin/Collatinus/collatinus/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'divinum-officium:'
cd "/media/fr_romain/DATA/Documents/Liturgie/divinum-officium/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'django-widget-tweaks:'
cd "/home/fr_romain/.local/lib/python3.6/site-packages/django-widget-tweaks/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'gregorio:'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'gregorio site:'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio-doc/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'jgabc:'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/jgabc/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'latin-ecclesiastic-accents:'
cd "/media/fr_romain/DATA/Documents/Langues/Latin/latin-ecclesiastic-accents/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'php-barcode:'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/php-barcode"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'zeal:'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/zeal/"
git fetch upstream
git st
git lg -10

