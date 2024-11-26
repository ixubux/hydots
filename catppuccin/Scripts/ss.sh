#!/bin/zsh

# Sets the screenshot directory
SCREENSHOT_DIR="$HOME/Screenshots"

# Find the next available number for the screenshot
# This searches for files named 01.png, 02.png, ..., etc. and finds the highest number
NUM=$(ls $SCREENSHOT_DIR/*.png 2>/dev/null | sed 's/[^0-9]*//g' | sort -n | tail -n 1)

# Increment the number, pad with leading zeros
NEXT_NUM=$(printf "%02d" $((NUM + 1)))

# Take the screenshot using grim and slurp, and save it with the new filename
grim -g "$(slurp)" "$SCREENSHOT_DIR/$NEXT_NUM.png"
