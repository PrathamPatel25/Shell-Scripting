#!/bin/bash

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist"
    exit 1
fi

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Get current date and time
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Extract source directory name
DIR_NAME=$(basename "$SOURCE_DIR")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/${DIR_NAME}_backup_$TIMESTAMP.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Status message
if [ $? -eq 0 ]; then
    echo "Backup created successfully!"
    echo "Backup file: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
