#!/bin/bash

function logtime {

	daten=$(date +'%m/%d/%Y')
	timen=$(date +"%T")
	echo -n $daten >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n $timen >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log

}
rm /home/minecraft0/MinecraftAdminScripts/log

echo " " > /home/minecraft0/MinecraftAdminScripts/log
logtime
echo "Log file cleared" >> /home/minecraft0/MinecraftAdminScripts/log

