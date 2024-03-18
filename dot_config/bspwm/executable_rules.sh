#! /bin/sh

# Mail
bspc rule -a "Instant messaging status" state=floating

# Art
bspc rule -a Gimp state=floating follow=on

# Steam
bspc rule -a '*:Steam:Friends List' state=floating
bspc rule -a 'steam:*:Friends List' state=floating
bspc rule -a 'Steam:*:Steam News' state=floating

# Godot
bspc rule -a Godot state=floating
bspc rule -a Godot_ProjectList state=floating
bspc rule -a stream-layout state=floating
bspc rule -a 'penguins but awesome' state=floating

# Games
bspc rule -a 'Slippi Launcher' state=floating center=true
bspc rule -a 'XIVLauncher.Core' state=floating center=true
bspc rule -a ffxiv_dx11.exe state=floating center=true

# Misc
bspc rule -a 'AppRun.wrapped' state=floating rectangle=1168x960+0+0 center=true
bspc rule -a Pavucontrol sticky=on state=floating
bspc rule -a easyeffects sticky=on state=floating
bspc rule -a 1Password sticky=on state=floating center=true
bspc rule -a mpv state=floating
bspc rule -a Screenkey manage=off
bspc rule -a Zathura state=tiled
bspc rule -a uxplay state=floating
bspc rule -a '*:uxplay' state=floating
bspc rule -a Peek state=floating
bspc rule -a scratchpad sticky=on state=floating
bspc rule -a '*:Print' state=float
bspc rule -a '*:scratchpad' sticky=on state=floating
bspc rule -a '*:floating' state=floating
bspc rule -a flameshot state=floating
bspc rule -a 'JetBrains Toolbox' sticky=on #TODO
