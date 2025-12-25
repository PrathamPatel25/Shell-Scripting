#!/bin/bash

# Configuration
PROCESS_NAME="node"
PORT=3000
URL="http://localhost:3000"
EXPECTED_STATUS=200

echo "====================================="
echo "      APPLICATION HEALTH CHECK"
echo "====================================="

# 1. Check if process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    echo "Process '$PROCESS_NAME' is running"
else
    echo "Process '$PROCESS_NAME' is NOT running"
    exit 1
fi

# 2. Check if port is open
if ss -ltn | grep -q ":$PORT "; then
    echo "Port $PORT is open"
else
    echo "Port $PORT is NOT open"
    exit 1
fi

# 3. Check HTTP status code
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$HTTP_STATUS" -eq "$EXPECTED_STATUS" ]; then
    echo "Application returned HTTP status $HTTP_STATUS"
else
    echo "Application returned HTTP status $HTTP_STATUS"
    exit 1
fi

echo "====================================="
echo "Application is HEALTHY"
echo "====================================="
