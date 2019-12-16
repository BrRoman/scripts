#!/bin/bash

####################################################################
# This script exports local files to Echanges/Fr. Romain/Ressources.
####################################################################

sudo mount -t cifs -o guest //192.168.1.11/Echanges/Fr.\ Romain/Ressources /media/fr_romain/Echanges

rsync_echanges(){
    sudo rsync -arv "$1" /media/fr_romain/Echanges
}
rsync_echanges "/media/fr_romain/DATA/Documents/Sainte_Ecriture/3 Ancien Testament/Cours sur les Psaumes/Cours psaumes.odt"
rsync_echanges "/media/fr_romain/DATA/Documents/Sainte_Ecriture/3 Ancien Testament/Cours sur les Psaumes/Cours psaumes.pdf"
rsync_echanges "/media/fr_romain/DATA/Documents/Informatique/Scripts/memo_commands_and_scripts.ods"

busy=true
while $busy
do
    if mountpoint -q /media/fr_romain/Echanges
    then
        sudo umount /media/fr_romain/Echanges 2> /dev/null
        if [ $? -eq 0 ]
        then
            busy=false
        else
            echo -n '.'
            sleep 1
        fi
    else
        busy=false
    fi
done
