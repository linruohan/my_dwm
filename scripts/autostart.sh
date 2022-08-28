#!/bin/bash
curdir=$(dirname $(realpath $0))
xrandr --output LVDS1 --off --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off --output VGA-1-2 --off
/bin/bash "${curdir}"/dwm-status.sh &
/bin/bash "${curdir}"/wp-autochange.sh &
picom -b
/bin/bash "${curdir}"/tap-to-click.sh &
/bin/bash "${curdir}"/inverse-scroll.sh &
/bin/bash "${curdir}"/run-mailsync.sh &
"${curdir}"/autostart_wait.sh &
feh --bg-fill --randomize ~/Pictures/guidao/*
