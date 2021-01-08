#!/bin/bash
source commonfuncs.sh

find /home/minecraft0/servers/ -name "server.jar" | awk -F "server" '{print $1 "server" $2}' | xargs -Ihere /usr/bin/screen -dm sh -c 'cd here;java -Xms2G -Xmx2G -jar server.jar nogui '

logtimedate
echo "Minecraft Servers Start" >> /home/minecraft0/MinecraftAdminScripts/log

