#!/bin/bash
#xmodmap ~/.Xmodmap &
fcitx5 &
xrandr --output LVDS-1 --off --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal  --output VGA-1-1 --off
picom -b
feh --bg-fill --randomize ~/Pictures/guidao/*
