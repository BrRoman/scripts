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
cd "/media/frromain/DATA/Sites/absences/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "accenteur:"
cd "/media/frromain/DATA/Sites/accenteur/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "accueil:"
cd "/media/frromain/DATA/Sites/accueil/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "cours:"
cd "/media/frromain/DATA/Documents/Cours/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "editor:"
cd "/media/frromain/DATA/Editions/editor/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "hotellerie:"
cd "/media/frromain/DATA/Sites/hotellerie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "infirmerie:"
cd "/media/frromain/DATA/Sites/infirmerie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "liturgie:"
cd "/media/frromain/DATA/Documents/Liturgie/liturgie/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "livrets:"
cd "/media/frromain/DATA/Sites/livrets/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "memo:"
cd "/media/frromain/DATA/Sites/memo/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "missa:"
cd "/media/frromain/DATA/Sites/missa/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ordomatic:"
cd "/media/frromain/DATA/Sites/ordomatic/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ordomatic-flavigny:"
cd "/media/frromain/DATA/Sites/ordomatic-flavigny/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "ornitho:"
cd "/media/frromain/DATA/Sites/ornitho/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "polyglotte:"
cd "/media/frromain/DATA/Sites/polyglotte/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "scripts:"
cd "/media/frromain/DATA/Documents/Informatique/Scripts/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "statistiques:"
cd "/media/frromain/DATA/Sites/statistiques/"
git push origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "typetrainer:"
cd "/media/frromain/DATA/Sites/typetrainer/"
git push origin
git st
git lg -10



# ------------------------
# Forks:

echo
echo "--------------------"
echo
echo "divinum-officium:"
cd "/media/frromain/DATA/Documents/Liturgie/divinum-officium/"
git fetch upstream
git st
git lg -10

echo
echo "--------------------"
echo
echo "gregorio site:"
cd "/media/frromain/DATA/Documents/Informatique/Prog/Gregorio/gregorio-doc/"
git fetch origin
git st
git lg -10

echo
echo "--------------------"
echo
echo "jgabc:"
cd "/media/frromain/DATA/Documents/Informatique/Prog/Gregorio/jgabc/"
git fetch origin 
git st
git lg -10

echo
echo "--------------------"
echo
echo "latin-ecclesiastic-accents:"
cd "/media/frromain/DATA/Documents/Langues/Latin/latin-ecclesiastic-accents/"
git fetch upstream
git push origin
git push upstream
git st
git lg -10
