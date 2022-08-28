#!/bin/bash
curdir=$(dirname $(realpath $0))
/bin/bash "${curdir}"/dwm-status.sh &
/bin/bash "${curdir}"/wp-autochange.sh &
fcitx5 &
xrandr --output LVDS-1 --off --output DP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal  --output VGA-1-1 --off
feh --bg-fill --randomize ~/Pictures/guidao/*
/bin/bash "${curdir}"/tap-to-click.sh &
/bin/bash "${curdir}"/inverse-scroll.sh &
/bin/bash "${curdir}"/run-mailsync.sh &
"${curdir}"/autostart_wait.sh &
