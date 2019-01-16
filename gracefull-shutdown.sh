#!/usr/bin/env bash

# list your programs here
# make sure the name you put here are tested with pkill
programs_list="chromium sublime_text tmux"

for program in $(echo $programs_list)
do
	pkill --signal SIGTERM "$program"
done
for program in $(echo $programs_list)
do
	if get-pidof.sh $program
	then
		pid=$(get-pidof.sh $program)
		while [ -e /proc/$pid ]
		do
			sleep 0.5
		done
	fi
done
rm ~/.pid/docker-compose-pid
echo "$(date)" ": gracefull shutdown successful" > ~/.pid/last-shutdown-status
