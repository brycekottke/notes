#!/bin/bash
#

xrandr --output LVDS-1 --mode 1366x768 --pos 0x0 --output VGA-1 --off --output HDMI-2 --off
sleep 1
xset r rate 200 20
sleep 1
nitrogen --set-scaled ~/.config/nitrogen/wallpaper-01.jpg
