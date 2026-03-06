#!/bin/bash

# Script to open today's daily note in nvim with Kitty
# Author: OpenCode Assistant

# Get today's date in YYYY-MM-DD format
TODAY=$(date +%Y-%m-%d)

# Path to the Daily Notes directory
DAILY_NOTES_DIR="$HOME/Documents/my-vault/Daily Notes"

# Full path to today's note
TODAY_NOTE="${DAILY_NOTES_DIR}/${TODAY}.md"

# Create the note if it doesn't exist
if [ ! -f "$TODAY_NOTE" ]; then
    # Create the file with a basic template
    mkdir -p "$DAILY_NOTES_DIR"
    cat > "$TODAY_NOTE" << EOF
# Daily Note - $TODAY

## Tasks
- [ ] 

## Notes


## Reflections


EOF
fi

# Change to the Daily Notes directory
cd "$DAILY_NOTES_DIR"

# Open the note in nvim using Kitty
/Applications/kitty.app/Contents/MacOS/kitty --single-instance=no --directory="$DAILY_NOTES_DIR" nvim "$TODAY_NOTE"