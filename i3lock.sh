#!/bin/bash

# Blur screen lock using scrot, imagemagick, and i3lock.
rm /tmp/screenshot.png /tmp/screenshotblur.png /tmp/screenshotblurlock.png 2>/dev/null
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x9 /tmp/screenshotblur.png
convert -gravity center /tmp/screenshotblur.png /usr/share/pixmaps/lock.png -composite /tmp/screenshotblurlock.png
i3lock -i /tmp/screenshotblurlock.png --indicator --indpos="w/2:h/2+8" --radius 150 --ring-width 10 --greetertext="Authentication Required" --veriftext="" --wrongtext="" --noinputtext="" --locktext="" --lockfailedtext="" --insidevercolor=00000000 --insidewrongcolor=00000000 --insidecolor=00000000 --ringvercolor=b8cffecc --ringwrongcolor=feb8cfcc --ringcolor=000000ff --linecolor=00000000 --keyhlcolor=b8cffecc --bshlcolor=feb8cfcc --separatorcolor=000000ff

# Sleep to give i3lock time to lock.
sleep 1
