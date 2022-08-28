#!/bin/bash
curdir=$(dirname $(realpath $0))
xrandr --output LVDS1 --off --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off --output VGA-1-2 --off
/bin/bash "${curdir}"/dwm-status.sh &
/bin/bash "${curdir}"/wp-autochange.sh &
picom -b
/bin/bash "${curdir}"/tap-to-click.sh &
/bin/bash "${curdir}"/inverse-scroll.sh &
nm-applet &
fcitx5 &
feh --bg-fill ~/Pictures/1dbc43f4880511ebb6edd017c2d2eca2.jpg &
xfce4-power-manager &
xfce4-volumed-pulse &
/bin/bash "${curdir}"/run-mailsync.sh &
"${curdir}"/autostart_wait.sh &
