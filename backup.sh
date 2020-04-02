#!/bin/sh



###################################################
# This script makes a backup of frromain and data.
###################################################


########################
##       SYSTEM       ##
########################

MAILADDR=editeur@traditions-monastiques.com
HOSTNAME=your_hostname_here
BACKUPDIR=/home/frromain/
EXCLUDES=/home/frromain/Scripts/backup_exclude.rsync
ARCHIVEROOT=/media/frromain/SVG_SYSTEM/fr_romain
CURRENT=main
INCREMENTDIR=`date +%Y-%m-%d`
OPTIONS="--force --ignore-errors --delete --delete-excluded \
 --exclude-from=$EXCLUDES --backup --backup-dir=$ARCHIVEROOT/$INCREMENTDIR -arv"
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
install -d $ARCHIVEROOT/$CURRENT
do_rsync()
{
   rsync $OPTIONS $BACKUPDIR $ARCHIVEROOT/$CURRENT
}
do_accounting()
{
   echo "Backup Accounting for Day $INCREMENTDIR on $HOSTNAME:">/tmp/rsync_script_tmpfile
   echo >> /tmp/rsync_script_tmpfile
   echo "################################################">>/tmp/rsync_script_tmpfile
   du -s $ARCHIVEROOT/* >> /tmp/rsync_script_tmpfile
   echo "Mail $MAILADDR -s $HOSTNAME Backup Report < /tmp/rsync_script_tmpfile"
   Mail $MAILADDR -s $HOSTNAME Backup Report < /tmp/rsync_script_tmpfile
   echo "rm /tmp/rsync_script_tmpfile"
   rm /tmp/rsync_script_tmpfile
}
if [ -f $EXCLUDES ]; then
 if [ -d $BACKUPDIR ]; then
  do_rsync
 else
  echo "cant find $BACKUPDIR"; exit
 fi
 else
  echo "cant find $EXCLUDES"; exit
fi

######################
##       DATA       ##
######################

BACKUPDIR=/media/frromain/DATA/
ARCHIVEROOT=/media/frromain/SVG_DATA
OPTIONS="--force --ignore-errors --delete --delete-excluded \
 --exclude-from=$EXCLUDES --backup --backup-dir=$ARCHIVEROOT/$INCREMENTDIR -arv"
install -d $ARCHIVEROOT/$CURRENT
do_rsync()
{
   rsync $OPTIONS $BACKUPDIR $ARCHIVEROOT/$CURRENT
}
do_accounting()
{
   echo "Backup Accounting for Day $INCREMENTDIR on $HOSTNAME:">/tmp/rsync_script_tmpfile
   echo >> /tmp/rsync_script_tmpfile
   echo "################################################">>/tmp/rsync_script_tmpfile
   du -s $ARCHIVEROOT/* >> /tmp/rsync_script_tmpfile
   echo "Mail $MAILADDR -s $HOSTNAME Backup Report < /tmp/rsync_script_tmpfile"
   Mail $MAILADDR -s $HOSTNAME Backup Report < /tmp/rsync_script_tmpfile
   echo "rm /tmp/rsync_script_tmpfile"
   rm /tmp/rsync_script_tmpfile
}
if [ -f $EXCLUDES ]; then
 if [ -d $BACKUPDIR ]; then
  do_rsync
 else
  echo "cant find $BACKUPDIR"; exit
 fi
 else
  echo "cant find $EXCLUDES"; exit
fi

