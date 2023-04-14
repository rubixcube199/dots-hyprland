#!/usr/bin/bash
state=$(eww get rev_winstart)

if [[ "$state" == "true" || "$1" == "--close" ]]; then
    eww update anim_open_winstart=false
    eww update rev_winstart=false
    eww update winsearch='' &
    sleep 0.1
    eww close winstart
else
    eww update anim_open_winstart=true
    eww open winstart
    eww update rev_winstart=true
fi
