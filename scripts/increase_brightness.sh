#!/bin/bash

maxBright=$(brightnessctl m)

currentBright=$(brightnessctl g)

if (( currentBright <= "$((maxBright-5))" )); then
    brightnessctl set "5+" 
    newBright="$((currentBright+5))"
    notify-send "Brightness set to $newBright" -t 500

else
    brightnessctl set "$maxBright"
fi 
