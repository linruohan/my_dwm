#!/bin/bash
curdir=$(dirname $(realpath $0))
/usr/bin/amixer set Master toggle
bash ${curdir}/dwm-status-refresh.sh
