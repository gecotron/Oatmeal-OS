#! /bin/sh

# Open App in float mode
xrdb merge ~/xres
bspc rule -a \* -o state=floating && urxvt -e nmtui
xrdb merge ~/.Xresources
