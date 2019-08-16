#!/bin/bash

# mysqldump all the databases:
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
echo "---"
echo ""
echo "> Download remote databases:"
/home/fr_romain/Scripts/receive_sql_server.sh


# Update all the remote databases:
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


echo "---"
echo "END"
