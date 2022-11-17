#!/bin/bash
curdir=$(dirname $(realpath $0))
while true; do
    /bin/bash ${curdir}/wp-change.sh
    sleep 3m
done
