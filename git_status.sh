#!/bin/bash

echo
echo '--------------------'
echo
echo 'Absences :'
cd "/media/fr_romain/DATA/Sites/absences/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Editor :'
cd "/media/fr_romain/DATA/Editions/editor/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Liturgie :'
cd "/media/fr_romain/DATA/Documents/Liturgie/liturgie/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Livrets :'
cd "/media/fr_romain/DATA/Sites/livrets/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Missa :'
cd "/media/fr_romain/DATA/Sites/missa/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Ordomatic :'
cd "/media/fr_romain/DATA/Sites/ordomatic/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Ornitho :'
cd "/media/fr_romain/DATA/Sites/ornitho/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Polyglotte:'
cd "/media/fr_romain/DATA/Sites/polyglotte/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Scripts:'
cd "/home/fr_romain/Scripts/"
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Woodadmin :'
cd "/media/fr_romain/DATA/Sites/woodadmin/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Compta :'
cd "/media/fr_romain/DATA/Sites/compta/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Gregorio :'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'Gregorio site :'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/gregorio-doc/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'jgabc :'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/Gregorio/jgabc/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'latin-ecclesiastic-accents :'
cd "/media/fr_romain/DATA/Documents/Langues/Latin/latin-ecclesiastic-accents/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'divinum-officium :'
cd "/media/fr_romain/DATA/Documents/Liturgie/divinum-officium/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'collatinus :'
cd "/media/fr_romain/DATA/Documents/Langues/Latin/Collatinus/collatinus/"
git fetch upstream
git st
git lg -10

echo
echo '--------------------'
echo
echo 'zeal :'
cd "/media/fr_romain/DATA/Documents/Informatique/Prog/forks/zeal/"
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

