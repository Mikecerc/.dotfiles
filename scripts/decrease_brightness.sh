#!/bin/bash

minBright=0

currentBright=$(brightnessctl g)
echo $currentBright
if (( currentBright >= "$((minBright+5))" )); then
    brightnessctl set "5-" 
    newBright="$((currentBright-5))"
    notify-send "Brightness set to $newBright" -t 500

else
    brightnessctl set "$minBright"
fi 
