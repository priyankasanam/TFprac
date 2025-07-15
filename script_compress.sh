#!/bin/bash

SOURCE_DIR="/var/log/myapp"
BACKUP_DIR="/backup/logs/"
TIMESTAMP=$(date +%d%m%Y_%H%M%S)
ARCHIVE_DIR="${BACKUP_DIR}/archive_${TIMESTAMP}"

mkdir -p "ARCHIVE_DIR"

find "$SOURCE_DIR" -type f -mtime +30 | while read -r file; do
    gzip "$file"
    mv "${file}.gz" "$ARCHIVE_DIR"
done

echo "Archived logs older than 30 days to : $ARCHIVE_DIR"