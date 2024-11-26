#!/bin/zsh

# Run hyprpicker and store the picked color in a variable
picked_color=$(sleep 1 && hyprpicker)

# Use wl-copy to copy the color to the clipboard
echo "$picked_color" | wl-copy

# Optionally, show a notification (if you have `notify-send` installed)
notify-send "Color picked" "$picked_color copied to clipboard"
