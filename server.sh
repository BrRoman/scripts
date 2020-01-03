#!/bin/bash



###############################################################
# This script synchronizes everything between server and local.
###############################################################


# Dump local databases:
echo "> Dump local databases:"
dumpmysql(){
    `mysqldump $1 > ~/Sites/sql/$1.sql`
    if [ "$?" -eq 0 ]; then
        echo "$1: dumped with success!"
    else
        echo "$1: problem dumping."
    fi
}
dumpmysql absences
dumpmysql editor
dumpmysql hotellerie 
dumpmysql livrets
dumpmysql missa
dumpmysql ordomatic
dumpmysql statistiques 


# Download remote databases:
echo ---
echo ""
echo "> Download remote databases:"
rsync -arv fr_romain@192.168.1.21:/home/fr_romain/Sites/sql/*_server.sql /home/fr_romain/Sites/sql/


# Update local from remote databases:
echo "---"
echo ""
echo "> Update from remote databases:"
mysql_update_from_remote(){
    `mysql $1 < ~/Sites/sql/$1_server.sql`
    if [ "$?" -eq 0 ]; then
        echo "$1: updated with success from remote!"
    else
        echo "$1: problem while updating from remote."
    fi
}
mysql_update_from_remote absences
mysql_update_from_remote editor
mysql_update_from_remote hotellerie 
mysql_update_from_remote missa
mysql_update_from_remote statistiques 


# Export git sites that are on branch master:
echo "> Export git sites that are on branch master:"
export_site(){
    echo
    echo -----------------------
    echo $1
    cd ~/Sites/$1
    branch=`git branch | grep \* | cut -d ' ' -f2`
    if [ "$branch" == 'master' ]; then
        rsync -rptgovDL -ssh --exclude-from='/home/fr_romain/Scripts/server_exclude.rsync' ~/Sites/$1 fr_romain@192.168.1.21:/home/fr_romain/Sites/$2
    else
        echo "On branch *$branch*";
    fi
}
export_site "absences/" "absences/"
export_site "accenteur/" "accenteur/"
export_site "barcode_js/" "barcode_js/"
export_site "barcode_php/" "barcode_php/"
export_site "editor/" "editor/"
export_site "gregorio-doc/" "gregorio-doc/"
export_site "gregorio-jgabc/" "gregorio-jgabc/"
export_site "hotellerie/" "hotellerie/"
export_site "infirmerie/" "infirmerie/"
export_site "livrets/" "livrets/"
export_site "missa/" "missa/"
export_site "ordomatic_flavigny/" "ordomatic/"
export_site "ornitho/" "ornitho/"
export_site "statistiques/" "statistiques/"
export_site "typetrainer/" "typetrainer/"


# Export not-git sites:
echo "> Export not git sites and databases:"
echo
echo -----------------------
echo "accueil/"
rsync -rptgovDL -ssh --exclude-from='/home/fr_romain/Scripts/server_exclude.rsync' ~/Sites/accueil/ fr_romain@192.168.1.21:/home/fr_romain/Sites/
echo
echo -----------------------
echo "courses/"
rsync -rptgovDL -ssh --exclude-from='/home/fr_romain/Scripts/server_exclude.rsync' ~/Sites/courses/ fr_romain@192.168.1.21:/home/fr_romain/Sites/courses
echo
echo -----------------------
echo "sql/"
rsync -rptgovDL -ssh --exclude-from='/home/fr_romain/Scripts/server_exclude.rsync' ~/Sites/sql/ fr_romain@192.168.1.21:/home/fr_romain/Sites/sql


# Export Editions:
echo "> Export editions:"
echo
echo -----------------------
echo "Éditions/"
rsync -rptgovDL -ssh  ~/Editions/ fr_romain@192.168.1.21:/home/fr_romain/Éditions/
