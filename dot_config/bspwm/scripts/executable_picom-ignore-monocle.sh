#! /bin/sh
bspc subscribe node_state | while read -r _ _ _ node state status; do
	if [[ "$state" == "floating" ]]; then
		case "$status" in
		off) xprop -id "$node" -remove _COMPTON_SHADOW ;;
		on) xprop -id "$node" -f _COMPTON_SHADOW 32c -set _COMPTON_SHADOW 1 ;;
		esac
	fi
done
