#!/bin/bash
source /home/minecraft0/MinecraftAdminScripts/includes.conf
echo "Startup script called" >> $logdir

$scriptsdir/upnpset.sh
$scriptsdir/startmcservers.sh
