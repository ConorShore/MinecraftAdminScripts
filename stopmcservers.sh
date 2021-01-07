#!/bin/bash
sudo screen -list | grep -v "screen"  | cut -d$'\t' -f 2 | cut -d"." -f 1 | xargs -Ihere sh -c "sudo screen -S here -p 0 -X stuff 'stop^M'"

echo "Minecraft Servers Shutdown" >> /home/minecraft0/MinecraftAdminScripts/log

