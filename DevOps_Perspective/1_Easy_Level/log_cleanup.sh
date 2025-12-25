#!/bin/bash

# Configuration
LOG_DIR="/var/log/myapp"
DAYS=7
LOG_FILE="/var/log/log_cleanup.log"

# Check if log directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Log directory does not exist: $LOG_DIR" >> "$LOG_FILE"
    exit 1
fi

# Find and delete log files older than specified days
echo "--------------------------------------" >> "$LOG_FILE"
echo "Log cleanup started at $(date)" >> "$LOG_FILE"

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -print -delete >> "$LOG_FILE" 2>&1

echo "Log cleanup completed at $(date)" >> "$LOG_FILE"
echo "--------------------------------------" >> "$LOG_FILE"

# crontab -e
# 0 2 * * * {path/log_cleanup.sh}