#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

command="-e $DIR/scripts/ubuntu-install.sh"
xfce4-terminal $command || \
gnome-terminal $command || \
xterm $command
wait

rm $DIR/Double\ click\ to\ start\ install.sh
