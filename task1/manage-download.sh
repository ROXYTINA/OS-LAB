#!/bin/bash

# Get the name of this script so it doesn't move itself
script_name=$(basename "$0")

# Loop through all items in current directory
for file in *; do
    # Skip directories
    if [ -f "$file" ]; then
        # Skip the script itself
        if [ "$file" = "$script_name" ]; then
            continue
        fi

        # Get file extension
        ext="${file##*.}"

        # If the file has no extension, put it in "Others"
        if [ "$ext" = "$file" ]; then
            ext="Others"
        fi

        # Optional: put all .sh files in a "Scripts" folder
        if [ "$ext" = "sh" ]; then
            ext="Scripts"
        fi

        # Create folder if it doesn't exist
        mkdir -p "$ext"

        # Move file into folder
        mv "$file" "$ext/"
        echo "Moved '$file' -> '$ext/'"
    fi
done

echo " All files are organized hx hx!"
