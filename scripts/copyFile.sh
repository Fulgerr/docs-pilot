#!/bin/bash

# Script to copy folders with incrementing numbers until file count reaches 400k

# Define source folders
SOURCE_FOLDERS=("Activities" "Automation Suite" "Data Service")

# Target file count
TARGET_FILE_COUNT=400000

# Counter for incremental naming
COUNTER=1

# Function to count files in a directory
count_files() {
    local dir="$1"
    if [ -d "$dir" ]; then
        find "$dir" -type f | wc -l
    else
        echo 0
    fi
}

# Function to get total file count in current directory
get_total_file_count() {
    find . -type f | wc -l
}

# Function to copy folder with incremental name
copy_folder() {
    local source="$1"
    local counter="$2"
    local target="${source}_${counter}"
    
    if [ -d "$source" ]; then
        echo "Copying $source to $target..."
        cp -r "$source" "$target"
        
        # Count files in the copied folder
        local file_count=$(count_files "$target")
        echo "Copied $file_count files to $target"
        return $file_count
    else
        echo "Warning: Source folder '$source' not found"
        return 0
    fi
}

# Main execution
echo "Starting folder copying process..."
echo "Target file count: $TARGET_FILE_COUNT"
echo "Source folders: ${SOURCE_FOLDERS[@]}"
echo

# Get initial file count
CURRENT_FILE_COUNT=$(get_total_file_count)
echo "Initial file count: $CURRENT_FILE_COUNT"

# Main loop
while [ $CURRENT_FILE_COUNT -lt $TARGET_FILE_COUNT ]; do
    echo
    echo "=== Iteration $COUNTER ==="
    
    # Copy each source folder with current counter
    for folder in "${SOURCE_FOLDERS[@]}"; do
        if [ $CURRENT_FILE_COUNT -ge $TARGET_FILE_COUNT ]; then
            echo "Target file count reached. Stopping..."
            break 2
        fi
        
        copy_folder "$folder" "$COUNTER"
        
        # Update current file count
        CURRENT_FILE_COUNT=$(get_total_file_count)
        echo "Current total file count: $CURRENT_FILE_COUNT"
        
        # Check if we've reached the target
        if [ $CURRENT_FILE_COUNT -ge $TARGET_FILE_COUNT ]; then
            echo "Target file count of $TARGET_FILE_COUNT reached!"
            break 2
        fi
    done
    
    # Increment counter for next iteration
    ((COUNTER++))
    
    # Safety check to prevent infinite loop
    if [ $COUNTER -gt 10000 ]; then
        echo "Safety limit reached (10000 iterations). Stopping..."
        break
    fi
done

echo
echo "=== Final Results ==="
echo "Final file count: $(get_total_file_count)"
echo "Total iterations completed: $((COUNTER - 1))"
echo "Script completed successfully!"
