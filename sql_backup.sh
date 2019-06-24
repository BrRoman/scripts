#!/bin/bash

# mysqldump all the databases:
dumpmysql(){
    `mysqldump $1 > ~/Sites/sql/$1.sql`
    if [ "$?" -eq 0 ]; then
        echo "$1 dumped with success!"
    else
        echo "$1: problem: $status"
    fi
    echo "---"
}
dumpmysql absences
dumpmysql editor
dumpmysql hotellerie 
dumpmysql livrets
dumpmysql missa
dumpmysql ordomatic
dumpmysql statistiques 
