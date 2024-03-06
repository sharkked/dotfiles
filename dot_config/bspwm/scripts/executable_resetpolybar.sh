#!/bin/sh

# Autostart with bspwm
wallpaper="$HOME/.config/bspwm/wallpaper"

# Set wallpaper
feh --bg-fill $wallpaper --bg-fill $wallpaper &

# [Re]start polybar
$HOME/.config/polybar/launch.sh
