#!/bin/bash

DIR="$HOME/Pictures"
FILENAME="Screenshot_$(date +%Y-%m-%d_%H-%M-%S).jpg"
# -f: Take screenshot of full screen
# -u: Take screenshot of active window 
# -r: Take screenshot of selected screen (partially)
xfce4-screenshooter -f -s "$DIR/$FILENAME"
notify-send "Screenshot Saved" "$DIR/$FILENAME" -t 1200
