#!/bin/sh

# Autostart with bspwm
wallpaper="$HOME/.config/bspwm/wallpaper"

# Set wallpaper
#feh -B "#141414" --bg-center $wallpaper --bg-center $wallpaper &
feh --bg-fill $wallpaper --bg-fill $wallpaper &

# [Re]start polybar
$HOME/.config/polybar/launch.sh
