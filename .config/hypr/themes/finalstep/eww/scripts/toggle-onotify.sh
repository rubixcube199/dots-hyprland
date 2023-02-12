#!/usr/bin/bash

getopen(){
  ans=$(eww -c ~/.config/hypr/themes/finalstep/eww windows | grep -e "$1")
  if [ "${ans:0:1}" == "*" ]; then
    echo "true"
  else 
    echo "false"
  fi
}

state=$(eww -c ~/.config/hypr/themes/finalstep/eww get rev_ontf)
state_ostg=$(eww -c ~/.config/hypr/themes/finalstep/eww get rev_ostg)

if [[ "$state" == "false" ]]; then
    eww -c ~/.config/hypr/themes/finalstep/eww open onotify
    if [[ "$state_ostg" == "true" ]]; then
        eww -c ~/.config/hypr/themes/finalstep/eww update rev_ostg=false
    fi
    hyprctl keyword monitor eDP-1,addreserved,53,0,-30,30
    # hyprctl keyword decoration:dim_inactive true
    eww -c ~/.config/hypr/themes/finalstep/eww update rev_ontf=true
    eww -c ~/.config/hypr/themes/finalstep/eww update force_sys_rev=true
    sleep 0.3
    if [[ "$state_ostg" == "true" ]]; then
        eww -c ~/.config/hypr/themes/finalstep/eww close osettings 
        eww -c ~/.config/hypr/themes/finalstep/eww update oquery=''
    fi
    wtype -k tab
else
    eww -c ~/.config/hypr/themes/finalstep/eww update rev_ontf=false
    eww -c ~/.config/hypr/themes/finalstep/eww update force_sys_rev=false
    hyprctl keyword monitor eDP-1,addreserved,53,0,0,0
    # hyprctl keyword decoration:dim_inactive false
    sleep 0.3
    eww -c ~/.config/hypr/themes/finalstep/eww close onotify 
fi
