#!/usr/bin/env bash

# list your programs here
# make sure the name you put here are tested with pkill
programs_list="chromium sublime_text tmux firefox"

for program in $(echo $programs_list)
do
	pkill --signal SIGTERM "$program"
done

# wait for programs to exit
for program in $(echo $programs_list)
do
	if pgrep -fo $program
	then
		pid=$(pgrep -fo $program)
		while [ -e /proc/$pid ]
		do
			sleep 0.5
		done
	fi
done
