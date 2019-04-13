#!/bin/bash
id=
devices=$(pactl list sink-inputs | grep -oP '(Sink Input #\K[^"]+)|(application.process.binary = "\K[^"]+)')
IFS=' ' read -r -a array <<< "$(echo $devices)"

i=0
for item in ${array[*]}; do
  if [[ "$item" == "spotify" ]]; then
    id=${array[$i-1]}
    echo "$id"
  fi
  i=$(($i + 1))
done

if [[ $1 == "lower" ]]; then
  pactl set-sink-input-volume $id -5%
elif [[ $1 == "raise" ]]; then 
  pactl set-sink-input-volume $id +5%
elif [[ $NEWVOL -gt 100 || "$1" == "max" ]]; then
  pactl set-sink-input-volume $id 100%
elif [[ $NEWVOL -lt 0 || "$1" == "mute" ]]; then
	pactl set-sink-input-volume $id 0%
fi




