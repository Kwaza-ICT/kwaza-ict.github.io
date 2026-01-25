#!/bin/bash

LOG_FOLDER="/var/logs/nginx"

if [ ! -d "$LOG_FOLDER" ]; then
    echo "Log file not found!"
    exit 1
fi

echo "Request URL Statistics"
echo "-------------------------------------"

for LOG_FILE in "$LOG_FOLDER"/*.log; do
  awk '{print $4}' $LOG_FILE | sort | uniq -c | sort -nr | head -3
done
