#!/usr/bin/bash
state=$(eww -c ~/.config/hypr/themes/finalstep/eww get rev_ostg)
state_ontf=$(eww -c ~/.config/hypr/themes/finalstep/eww get rev_ontf)

if [[ "$state" == "false" ]]; then
    if [[ "$state_ontf" == "true" ]]; then
        eww -c ~/.config/hypr/themes/finalstep/eww update rev_ontf=false
        eww -c ~/.config/hypr/themes/finalstep/eww update force_sys_rev=false
    fi
    eww -c ~/.config/hypr/themes/finalstep/eww open osettings 
    eww -c ~/.config/hypr/themes/finalstep/eww update oquery=''
    hyprctl keyword monitor eDP-1,addreserved,53,0,30,-30
    # hyprctl keyword decoration:dim_inactive true
    eww -c ~/.config/hypr/themes/finalstep/eww update rev_ostg=true
    sleep 0.3
    if [[ "$state_ostg" == "true" ]]; then
        eww -c ~/.config/hypr/themes/finalstep/eww close onotify 
    fi
    sleep 1
    # wtype -k tab
else
    eww -c ~/.config/hypr/themes/finalstep/eww update rev_ostg=false
    hyprctl keyword monitor eDP-1,addreserved,53,0,0,0
    # hyprctl keyword decoration:dim_inactive false
    sleep 0.3
    eww -c ~/.config/hypr/themes/finalstep/eww close osettings 
    eww -c ~/.config/hypr/themes/finalstep/eww update oquery=''
fi
