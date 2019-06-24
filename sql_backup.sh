#!/bin/bash

# mysqldump all the databases:
mysqldump(){
    echo "$1 : "
    `mysqldump -u root $1 > ~/Sites/sql/$1.sql`
    if [ "$?" -eq 0 ]; then
        echo "    Success"
    else
        echo "    Problem"
    fi
}
mysqldump absences
mysqldump editor
mysqldump hotellerie 
mysqldump livrets
mysqldump missa
mysqldump ordomatic
mysqldump statistiques 
