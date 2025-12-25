#!/bin/bash

echo "======================================"
echo "        SYSTEM INFORMATION"
echo "======================================"

# Current User
echo "Current User       : $(whoami)"

# Operating System
echo "Operating System  : $(uname -o)"

# Kernel Version
echo "Kernel Version    : $(uname -r)"

echo "--------------------------------------"

# Disk Usage
echo "Disk Usage:"
df -h --total | grep -E "Filesystem|total"

echo "--------------------------------------"

# Memory Usage
echo "Memory Usage:"
free -h

echo "--------------------------------------"

# System Uptime
echo "System Uptime     : $(uptime -p)"

echo "======================================"
