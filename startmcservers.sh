#!/bin/bash
source commonfuncs.sh

find $(serversdir) -name "server.jar" | awk -F "server" '{print $1 "server" $2}' | xargs -Ihere /usr/bin/screen -dm sh -c 'cd here;java -Xms2G -Xmx2G -jar server.jar nogui '

logdatetime
echo "Minecraft Servers Start" >> $(logdir)

