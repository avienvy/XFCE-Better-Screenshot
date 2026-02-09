#!/bin/bash

DIR="$HOME/Pictures"
FILENAME="Screenshot_$(date +%Y-%m-%d_%H-%M-%S).jpg"
FILEPATH="$DIR/$FILENAME"
# -f: Take screenshot of full screen
# -w: Take screenshot of active window 
# -r: Take screenshot of selected screen (partially)
xfce4-screenshooter -f -s "$FILEPATH"

if [ -f "$FILEPATH" ]; then
    notify-send "Screenshot Saved" "$FILEPATH" -t 1200
else
    notify-send "Screenshot Cancelled" -t 1200
fi
