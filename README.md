# XFCE-Better-Screenshot
Get rid of annoying confirmation popup when taking a quick screenshot with XFCE Screenshoter

If you familiar with how ShareX on Windows workflow, this is a workaround for you, simply add new keyboard shortcut with `sh` pointed to the script.

You can create the script manually or download it directly from the repository.

```
#!/bin/bash

DIR="$HOME/Pictures"
FILENAME="Screenshot_$(date +%Y-%m-%d_%H-%M-%S).jpg"
# -f: Take screenshot of full screen
# -u: Take screenshot of active window 
# -r: Take screenshot of selected screen (partially)
xfce4-screenshooter -f -s "$DIR/$FILENAME"
notify-send "Screenshot Saved" "$DIR/$FILENAME" -t 1200
```
# Example shortcut
![Screenshot_2026-02-09_10-23-56](https://github.com/user-attachments/assets/d5a66870-65cc-4f69-8ad1-c8a5c9b66169)
