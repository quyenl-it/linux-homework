#!/bin/bash

# load functions
source ./myfunctions

# call menu
menu

# input directory
read -p "Enter directory to backup: " SRC_DIR

# compress option
read -p "Compress? (y/n): " COMPRESS

# backup folder
BACKUP_DIR="$HOME/.secret/.backup"

# create folder
mkdir -p $BACKUP_DIR

# permission
chmod 700 $BACKUP_DIR

echo "Backup location: $BACKUP_DIR"

# logic
if [ "$COMPRESS" == "y" ]; then
    tar -czf $BACKUP_DIR/backup_$(date +%F).tar.gz $SRC_DIR
else
    cp -r $SRC_DIR $BACKUP_DIR
fi

echo "DONE!"
