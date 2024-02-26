#!/bin/bash


green_thresh=0
yellow_thresh=25
red_thresh=100

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l); then
	updates_arch=0
fi

if ! updates_aur=$(yay -Su --aur --quiet | wc -l); then 
	updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))


css_class="green"


if [ "$updates" -gt $yellow_thresh ]; then
    css_class="yellow"
fi

if [ "$updates" -gt $red_thresh ]; then
    css_class="red"
fi


if [ "$updates" -gt $green_thresh ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s Updates", "class": "%s"}' "$updates" "$updates" "$updates" "$css_class"
else
    printf '{"text": "0", "alt": "0", "tooltip": "0 Updates", "class": "green"}'
fi

