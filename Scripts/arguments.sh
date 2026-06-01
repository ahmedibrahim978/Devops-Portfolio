#!/bin/bash
# Flexible Backup Script

if [ $# -eq 0 ]; then
echo "ERROR: No folder specified"
echo "Usage: ./arguments.sh /path/to/folder"
exit 1
fi

SOURCE=$1
DATE=$(date +%Y-%m-%d)
BACKUP="backup-$DATE.tar.gz"

echo "Backing up: $SOURCE"
tar -czf $BACKUP $SOURCE
echo "Done - created $BACKUP"

