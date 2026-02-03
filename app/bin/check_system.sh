#!/bin/bash

DATE=$(date)
HOST=$(hostname)
UPTIME=$(uptime -p)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')



echo "date: $DATE"
echo "host: $HOST"
echo "uptime: $UPTIME"
echo "disk usage: $DISK_USAGE"

if [ "$DISK_USAGE" -gt 80 ]; then
echo "WARNING: LOW DISK SPACE"
fi

