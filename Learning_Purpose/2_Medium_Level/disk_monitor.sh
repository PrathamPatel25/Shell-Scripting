#!/bin/bash

# Threshold percentage
THRESHOLD=80

# Get disk usage for root partition
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Check if usage exceeds threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "⚠️ ALERT: Disk usage is at ${USAGE}% (Threshold: ${THRESHOLD}%)"
else
    echo "✅ Disk usage is normal: ${USAGE}%"
fi

# crontab -e
# */10 * * * * {path/disk_monitor.sh} >> {pathdisk_alert.log}