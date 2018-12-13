#!/bin/bash

startup_programs="compton\nDiscordPTB\nspotify\nslack\npolkit\n"
for program in $(printf $startup_programs); do
	process=$(pgrep $program)
	if [ -z "$process" ]
	then
		$program
	fi
	echo $program
	echo $(pgrep $program)
done
