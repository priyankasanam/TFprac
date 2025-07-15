#!/bin/bash/

THRESHOLD=80
LOG_FILE="/var/log/disk_alert.log"
PARTITION="/"

USAGE=$(df -h "$PARTITION" | awk 'NR==2 {gsub("%", "", $5); print $5}')
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    MESSAGE="[$TIMESTAMP] WARNING: Disk usage at ${USAGE}% on ${PARTITION}"
    echo "$MESSAGE" >> "$LOG_FILE"
    echo "$MESSAGE" | mail -s "DISK SPACE ALERT: ${USAGE}% on ${PARTITION}" s.priyaa43@gmail.com
else
    echo "[$TIMESTAMP] OK: DISK USAGE IS ${USAGE}% on ${PARTITION}"
fi
