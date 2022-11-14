#! /bin/sh

# Open App in float mode
bspc rule -a \* -o state=floating && urxvt -e ~/.config/bspwm/scripts/power-menu.sh 
wait
