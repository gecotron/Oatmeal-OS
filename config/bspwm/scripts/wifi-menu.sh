#! /bin/sh

# Open App in float mode
xrdb merge ~/.config/bspwm/scripts/wifi-colours
bspc rule -a \* -o state=floating && urxvt -e sudo wifi-menu
xrdb merge ~/.Xresources
