#!/bin/bash

function logtime {

	daten=$(date +'%m/%d/%Y')
	timen=$(date +"%T")
	echo -n $daten >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n $timen >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log

}

sudo screen -list | grep -v "screen"  | cut -d$'\t' -f 2 | cut -d"." -f 1 | xargs -Ihere sh -c "sudo screen -S here -p 0 -X stuff 'stop^M'"

logtime

echo "Minecraft Servers Shutting Down" >> /home/minecraft0/MinecraftAdminScripts/log

while pids=$(pidof java)
do
	logtime
	echo "Waiting..." >> /home/minecraft0/MinecraftAdminScripts/log	
	sleep 1
done

logtime

echo "Servers Stopped" >> /home/minecraft0/MinecraftAdminScripts/log

