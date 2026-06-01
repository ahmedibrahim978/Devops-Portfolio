#!/bin/bash

# Automated Backup Script
# Written by Ahmed - DevOps Training

DATE=$(date +%Y-%m-%d)
SOURCE=~/Documents/devops-practice
BACKUP_DIR=~/Documents/backups
BACKUP_FILE="backup-$DATE.tar.gz"

echo "=============================="
echo "Automated Backup Script"
echo "Date: $DATE"
echo "=============================="

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
mkdir - p "$BACKUP_DIR"
echo "Created backup directory: $BACKUP_DIR"
fi

# Create the Backup
echo ""
echo "Backing up: $SOURCE"
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE"

# Check if backup succeeded
if [ $? -eq 0 ]; then
echo "Backup successful: $BACKUP_FILE"
echo "Size: $(du -sh $BACKUP_DIR/$BACKUP_FILE | cut -f1)"
else
echo "Backup FAILED"
fi

echo""
echo "All backups:"
ls -lh "$BACKUP_DIR"

echo ""
echo "===================================="
echo "Backup Complete"
echo "==================================="

