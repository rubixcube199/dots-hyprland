#!/usr/bin/bash
if [ "$1" == "enable" ]; then
    hyprctl keyword bindm ,mouse:273,resizewindow
    hyprctl keyword bindm ,mouse:274,movewindow
    eww update editing=true
elif [ "$1" == "disable" ]; then 
    hyprctl keyword unbind ,mouse:273
    hyprctl keyword unbind ,mouse:274
    eww update editing=false
fi