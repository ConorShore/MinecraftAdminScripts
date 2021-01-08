#!/bin/bash

source commonfuncs.sh

sudo screen -list | grep -v "screen"  | cut -d$'\t' -f 2 | cut -d"." -f 1 | xargs -Ihere sh -c "sudo screen -S here -p 0 -X stuff 'stop^M'"

logdatetime

echo "Minecraft Servers Shutting Down" >> $logdir

while pids=$(pidof java)
do
	logdatetime
	echo "Waiting..." >> $logdir	
	sleep 1
done

logdatetime

echo "Servers Stopped" >> $logdir

