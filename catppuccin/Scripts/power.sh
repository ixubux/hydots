#!/bin/bash

# Define the options
options=
"Shutdown
Reboot
Logout
Lock"
# Display the options using Rofi
choice=$(echo -e "$options" | rofi -dmenu -theme "~/.config/rofi/config.rasi")

# Perform the chosen action
case $choice in
    "Shutdown")
        shutdown -h now
        ;;
    "Reboot")
        reboot
        ;;
    "Logout")
        i3-msg exit # Change this for your specific window manager
        ;;
    "Lock")
        i3lock # Or another lock command like betterlockscreen or light-locker
        ;;
    *)
        exit 1
        ;;
esac
