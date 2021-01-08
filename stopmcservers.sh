#!/bin/bash

source commonfuncs.sh

sudo screen -list | grep -v "screen"  | cut -d$'\t' -f 2 | cut -d"." -f 1 | xargs -Ihere sh -c "sudo screen -S here -p 0 -X stuff 'stop^M'"

logtimedate

echo "Minecraft Servers Shutting Down" >> /home/minecraft0/MinecraftAdminScripts/log

while pids=$(pidof java)
do
	logtimedate
	echo "Waiting..." >> /home/minecraft0/MinecraftAdminScripts/log	
	sleep 1
done

logtimedate

echo "Servers Stopped" >> /home/minecraft0/MinecraftAdminScripts/log

