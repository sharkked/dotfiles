#!/bin/bash

if [ -z $1 ]; then
	echo "Usage: $0 <name of hidden scratchpad window>"
	exit 1
fi

pids=$(xdotool search --classname ${1})
if [[ $pids == '' ]]; then
	# launch if not running
	kitty --class scratchpad &>/dev/null &
else
	# toggle
	for pid in $pids; do
		echo "Toggle $pid"
		bspc node $pid --flag hidden -f
	done
fi
