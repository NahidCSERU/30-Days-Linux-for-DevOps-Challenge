#!/bin/bash
# Day-20: Simple backup script
# Author: <Nahid Hasan>
# Date: (05.09.2025)

SOURCE="$HOME/Documents"
DEST="$HOME/backup"
DATE=$(date +%Y-%m-%d-%H-%M)

mkdir -p $DEST
tar -czf $DEST/backup-$DATE.tar.gz $SOURCE

echo "Backup completed at $(date)" >> $DEST/backup.log