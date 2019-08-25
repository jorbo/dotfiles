#!/bin/sh
killall polybar
polybar laptopmode &
nitrogen --restore &
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x120 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
