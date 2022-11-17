#!/bin/bash
curdir=$(dirname $(realpath $0))
/usr/bin/amixer -qM set Master 5%- umute
#pactl set-sink-volume @DEFAULT_SINK@ -5%
bash ${curdir}/dwm-status-refresh.sh
