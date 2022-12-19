#!/bin/bash
 
res=$(echo "logout|restart|shutdown" | rofi -sep "|" -dmenu -i -p 'Power Menu: ' "" -bw 0 -bc "#dc1900" -bg "#1e1e20" -fg "#e0d8d1" -hlbg "#1e1e20" -hlfg "#dc1900" -width 9 -hide-scrollbar -eh 4 -location 3 -yoffset 23 -padding 15 -opacity 100 -font "Awesome 10, Hack 10" -auto-select)
 
#if [ $res = "lock" ]; then
#    /home/khoaduccao/.config/lock.sh
#fi
if [ $res = "logout" ]; then
    openbox --exit
fi
if [ $res = "restart" ]; then
    systemctl reboot
fi
if [ $res = "shutdown" ]; then
    systemctl poweroff
fi
exit 0
