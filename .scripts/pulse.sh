#!/bin/bash
mod=10
VOLUME=$(/home/jordan/pa_volume/pa_volume | grep -e 'ncspot' | grep -e '[0-9]*%' | sed "s/[^0-9]*//g" | xargs)

if [ $1 == "lower" ]; then
	NEWVOL=$(($VOLUME - $mod))
elif [ $1 == "raise" ]; then
  NEWVOL=$(($VOLUME + $mod))
fi

if [[ $NEWVOL -gt 100 || "$1" == "max" ]]; then
	NEWVOL=100
elif [[ $NEWVOL -lt 0 || "$1" == "mute" ]]; then
	NEWVOL=0
fi

echo $NEWVOL
/home/jordan/pa_volume/pa_volume "ALSA plug-in [ncspot]" $NEWVOL
