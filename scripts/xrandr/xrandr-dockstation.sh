#!/bin/bash
xrandr --output VGA-1 --mode 1920x1080 --pos 0x0 --output HDMI-2 --mode 1920x1080 --pos 0x0 --left-of VGA-1 --output LVDS-1 --off
sleep 1
xset r rate 200 20
