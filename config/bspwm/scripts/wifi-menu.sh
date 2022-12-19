#! /bin/sh

# Open App in float mode
xrdb merge ~/.cache/wal/colors.Xresources
bspc rule -a \* -o state=floating && alacritty -e nmtui
