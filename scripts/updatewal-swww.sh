#!/bin/bash


# pick random wallpaper or load one from cache

if [ -f ~/.cache/current_wallpaper.jpg ]; then
	wal -q -i ~/.cache/current_wallpaper.jpg
else
	wal -q -i ~/wallpaper/
fi

#load pywal colors
source "$HOME/.cache/wal/colors.sh"

#copy waybar colors
cp ~/.cache/wal/colors-waybar.css ~/.config/waybar/

#get wallpaper name
newwall=$(echo $wallpaper | sed "s|$HOME/wallpaper/||g")

#copy wallpaper into cache
cp $wallpaper /home/mike/.cache/current_wallpaper.jpg

#set wallpaper 

transition_type="wipe"
# transition_type="outer"
# transition_type="random"

swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

#reload waybar
~/.config/waybar/launchWaybar.sh

#send notif
notify-send "Theme updated" "With image $newwall"


