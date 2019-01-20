#!/usr/bin/env bash

# NOTE! READ THIS COMMENTS BEFORE YOU USE

# Process launched by you from start menu are child of plasmashell
# you don't have to list them in programs_list variable in `graceful-shutdown.sh`.
# Optionally, you can put them there just to be doublely-sure.

if pgrep -fo plasmashell
then
	plasmashell_pid=$(pgrep -fo plasmashell)
	child_procs=$(pgrep -d ' ' -P $plasmashell_pid)
	for c_pid in $(echo $child_procs)
	do
		kill -s SIGTERM $c_pid
	done
	for c_pid in $(echo $child_procs)
	do
		while [ -e /proc/$c_pid ]
		do
			sleep 0.5
		done
	done
fi
