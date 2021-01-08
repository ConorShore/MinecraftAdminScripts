#!/bin/bash
source /home/minecraft0/MinecraftAdminScripts/includes.conf
find $serversdir -name "server.properties" | xargs cat | grep server-port | cut -f 2 -d "=" | xargs -n 1 -Ihere upnpc -r here here TCP

logdatetime
echo "uPnP port forwarding applied" >> $logdir

