#!/bin/bash
function logdatetime {

	daten=$(date +'%m/%d/%Y')
	timen=$(date +"%T")
	echo -n $daten >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n $timen >> /home/minecraft0/MinecraftAdminScripts/log
	echo -n " " >> /home/minecraft0/MinecraftAdminScripts/log

}