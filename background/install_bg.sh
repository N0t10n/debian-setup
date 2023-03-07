#!/bin/bash

# Source and destination directories
SCR_DIR="$(find $HOME -name "terminal-setup" -type d)/backgrounds/img"
DEST_DIR="${HOME}/.local/share/backgrounds"

# Calculate difference between folder contents
DIFF_IMG="$(diff -u $SCR_DIR $DEST_DIR | wc -l)"

# Copy all images to user backgrounds directory
find $SCR_DIR -type f -name "*.[jp][pn]g" -print0 | xargs -0 -I {} cp {} $DEST_DIR
echo "Total of $DIFF_IMG images copied to $DEST_DIR"
