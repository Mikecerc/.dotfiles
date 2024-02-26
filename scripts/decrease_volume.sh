#!/bin/bash

minVolume=0

currentVol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -n 1)

if (( currentVol >= "$((minVolume+2))" )); then
    pactl set-sink-volume @DEFAULT_SINK@ "-2%" 
    newVol="$((currentVol-2))"
    notify-send "Volume set to $newVol%" -t 500

else
    pactl set-sink-volume @DEFAULT_SINK@ "0%"
fi 
