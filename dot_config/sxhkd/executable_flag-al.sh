#!/bin/sh

win=$(xdotool getactivewindow)

pids=$(xdotool search --class "Discord")
for pid in $pids; do
    name=$(xdotool getwindowname $pid)
    if [[ $name =~ Discord ]]; then
        xdotool windowactivate $pid
        xdotool keyup super a type '+:flag_al'
        xdotool key Tab
    fi
done

xdotool windowactivate $win
