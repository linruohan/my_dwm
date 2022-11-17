#!/bin/bash
curdir=$(dirname $(realpath $0))
/bin/bash "${curdir}"/dwm-status.sh &
/bin/bash "${curdir}"/wp-autochange.sh &
/bin/bash "${curdir}"/tap-to-click.sh &
/bin/bash "${curdir}"/inverse-scroll.sh &
/bin/bash "${curdir}"/run-mailsync.sh &
"${curdir}"/autostart_wait.sh &
