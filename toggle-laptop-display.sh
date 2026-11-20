#!/bin/bash
# Toggle eDP-1 display based on laptop lid state

LID_STATE=$(cat /proc/acpi/button/lid/LID/state | awk '{print $2}')

if [[ "$LID_STATE" == "closed" ]]; then
    hyprctl keyword monitor "eDP-1, disable"
    notify-send "Laptop Display" "Lid closed - disabling eDP-1"
else
    hyprctl keyword monitor "eDP-1, preferred, auto, 1"
    notify-send "Laptop Display" "Lid open - enabling eDP-1"
fi
