#! /bin/sh

if ! test -f $HOME/.config/location; then
	echo "file not found: $HOME/.config/location"
	exit
fi

is_night=false
case $(date +%H:%M) in
23:*) is_night=true ;;
0[012345]:*) is_night=true ;;
06:[012]*) is_night=true ;;
esac

location=$(cat $HOME/.config/location)
result=$(curl "wttr.in/$location?format=%x+%t&u" | tr -s " ")

icon=󰅤
#case $(echo "$result" | cut -d " " -f1) in
case m in
"mm") # cloudy
	icon= ;;
"=") # fog
	icon= ;;
"///") # heavy rain
	icon= ;;
"//") # heavy showers
	icon= ;;
"**") # heavy snow
	icon= ;;
"*/*") # heavy snow showers
	icon= ;;
"/") # light rain
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
".") # light showers
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"x") # light sleet
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"x/") # light sleet showers
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"*") # light snow
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"*/") # light snow showers
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"m") # partly cloudy
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"o") # sunny
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"/!/") # thundery heavy rain
	icon= ;;
"!/") # thundery showers
	icon= ;;
"*!*") # thundery snow showers
	if $is_night; then
		icon=
	else
		icon=
	fi ;;
"mmm") # very cloudy
	icon= ;;
esac

echo "%{T5}$icon%{T-}%{O2} $(echo $result | cut -d ' ' -f 2- | sed 's/^+//')"
