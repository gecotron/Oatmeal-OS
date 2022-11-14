#!/bin/bash

# Get Columns
COLS="$(tput cols)"


# menu text
title="POWER MENU" 
power="⏻  p (power off)" 
rest="⏳ r (reboot)" 
hold="⏸  s (suspend)" 
lock="⏼  l (lock)" 
quit="  q (quit)"
menu="==> "

# Center Menu
printf "\e[1m\e[32m"
printf "%*s\n" $((($COLS+5)/2)) "$title"
printf "\e[31m"
printf "%*s\n" $(((${#power}+$COLS)/2)) "$power"
printf "%*s\n" $(((8+$COLS)/2)) "$rest"
printf "%*s\n" $(((13+$COLS)/2)) "$hold"
printf "%*s\n" $(((6+$COLS)/2)) "$lock"
printf "%*s\n" $(((6+$COLS)/2)) "$quit"
printf "\e[0m" 

# read user input
echo
printf "$menu"
read -r -n 1 answer
echo

# conditional
if [ "$answer" == "p" ]; then
    systemctl poweroff
elif [ "$answer" == "r" ]; then
    systemctl reboot
elif [ "$answer" == "s" ]; then
    systemctl suspend
elif [ "$answer" == "h" ]; then
    systemctl hibernate
elif [ "$answer" == "l" ]; then
    betterlockscreen -l dim
else
    exit
fi
