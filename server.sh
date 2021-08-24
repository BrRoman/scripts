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
dumpmysql infirmerie
dumpmysql livrets
dumpmysql missa
dumpmysql ordomatic
dumpmysql polyglotte
dumpmysql statistiques


# Download remote databases:
echo
echo
echo "> Download remote databases:"
rsync -arv frromain@192.168.1.21:/home/frromain/Sites/sql/*_server.sql /home/frromain/Sites/sql/


# Update local from remote databases:
echo
echo
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
mysql_update_from_remote imprimerie
mysql_update_from_remote infirmerie
mysql_update_from_remote missa
mysql_update_from_remote statistiques


# Git sites that are on branch master:
echo
echo
echo "> Git sites that are on branch master:"
export_site(){
    echo $1
    cd ~/Sites/$1
    branch=`git branch | grep \* | cut -d ' ' -f2`
    if [ "$branch" == 'master' ]; then
        rsync -rptgovDL -ssh --exclude-from='/home/frromain/Scripts/server_exclude.rsync' ~/Sites/$1 frromain@192.168.1.21:/home/frromain/Sites/$2
    else
        echo "On branch *$branch*";
    fi
    echo ---
}
export_site "absences/absences/" "absences/absences/"
export_site "accenteur/" "accenteur/"
export_site "accueil/" ""
export_site "barcode/barcode/" "barcode/barcode/"
export_site "editor/editor/" "editor/editor/"
export_site "gregorio-doc/" "gregorio-doc/"
export_site "hotellerie/hotellerie/" "hotellerie/hotellerie/"
export_site "imprimerie/imprimerie/" "imprimerie/imprimerie/"
export_site "infirmerie/infirmerie/" "infirmerie/infirmerie/"
export_site "jgabc/" "jgabc/"
export_site "livrets/livrets/" "livrets-django/livrets/"
export_site "livrets-php/" "livrets/"
export_site "memo/" "memo/"
export_site "missa/missa/" "missa/missa/"
export_site "ordomatic/ordomatic" "ordomatic/ordomatic/"
export_site "ordomatic-flavigny/" "ordomatic-php/"
export_site "ornitho/" "ornitho/"
export_site "polyglotte/polyglotte/" "polyglotte/polyglotte/"
export_site "statistiques/statistiques/" "statistiques/statistiques/"
export_site "typetrainer/" "typetrainer/"


# Other:
echo
echo "> Other:"
echo "courses/"
rsync -rptgovDL -ssh --exclude-from='/home/frromain/Scripts/server_exclude.rsync' ~/Sites/courses/ frromain@192.168.1.21:/home/frromain/Sites/courses
echo ---
echo "sql/"
rsync -rptgovDL -ssh --exclude-from='/home/frromain/Scripts/server_exclude.rsync' ~/Sites/sql/ frromain@192.168.1.21:/home/frromain/Sites/sql
echo ---


# Editions:
echo
echo
echo "> Editions:"
echo "Éditions/"
rsync -rptgovDL -ssh  ~/Editions/ frromain@192.168.1.21:/home/frromain/Éditions/
echo
