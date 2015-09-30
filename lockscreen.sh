#!/bin/bash
#Lockscreen script form Unixporn using i3lock using custom PH logo.
ICON=$HOME/Downloads/ph_lockscreen.png #This holds the image that will show up #This holds the image that will show up #This holds the image that will show up
TMPBG=/tmp/screen.png
scrot /tmp/screen.png #will need scrot if you do not have it
#convert $TMPBG -scale 10% -scale 1000% $TMPBG #More blur and pixelized background
convert $TMPBG -scale 25% -scale 400% -fill black -colorize 25% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG #will need to have i3lock, a type of screenlock similar to gnome-screensaver
