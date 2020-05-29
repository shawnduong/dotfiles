#!/bin/sh

rm /tmp/screenshot.png 2>/dev/null
scrot /tmp/screenshot.png
betterlockscreen -u /tmp/screenshot.png
betterlockscreen -l dimblur -t "Device is locked."

sleep 1
