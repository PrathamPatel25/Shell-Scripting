#!/bin/bash

# Check if directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIR="$1"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

# Create miscellaneous folder if not exists
mkdir -p "$DIR/miscellaneous"

# Loop through all files in the directory
for file in "$DIR"/*; do
    # Process only regular files
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        # Check if file has an extension
        if [[ "$filename" == *.* ]]; then
            ext="${filename##*.}"
            mkdir -p "$DIR/$ext"
            mv "$file" "$DIR/$ext/"
        else
            mv "$file" "$DIR/miscellaneous/"
        fi
    fi
done

echo "Files organized successfully!"
