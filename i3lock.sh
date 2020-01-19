#!/bin/bash

# Blur screen lock using scrot, imagemagick, and i3lock.
rm /tmp/screenshot.png /tmp/screenshotblur.png 2>/dev/null
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x9 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png --indicator --insidevercolor=aaaaaaaa --insidewrongcolor=aaaaaaaa --insidecolor=aaaaaaaa --ringvercolor=aaaaaaaa --ringwrongcolor=aaaaaaaa --ringcolor=aaaaaaaa --keyhlcolor=aaaaaaaa --radius 30 --indpos="w/16:h-h/10" --veriftext="" --wrongtext="" --noinputtext="" --locktext="" --lockfailedtext=""

# Sleep to give i3lock time to lock.
sleep 1
