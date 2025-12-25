#!/bin/bash

# Check if log file argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file does not exist"
    exit 1
fi

# Count ERROR messages
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)

# Count WARNING messages
WARNING_COUNT=$(grep -i "warning" "$LOG_FILE" | wc -l)

# Extract unique IP addresses
UNIQUE_IPS=$(grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' "$LOG_FILE" | sort -u | wc -l)

echo "======================================"
echo "        LOG FILE ANALYSIS REPORT"
echo "======================================"
echo "Log File           : $LOG_FILE"
echo "ERROR Messages     : $ERROR_COUNT"
echo "WARNING Messages   : $WARNING_COUNT"
echo "Unique IP Addresses: $UNIQUE_IPS"
echo "======================================"
