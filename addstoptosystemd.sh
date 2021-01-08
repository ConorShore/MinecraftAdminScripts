#!/bin/bash
source /home/minecraft0/MinecraftAdminScripts/includes.conf
sudo rm /etc/systemd/system/MinecraftAdminScripts.service

sudo printf "[Unit]\n
Description=Minecraft server operations\n\
Before=shutdown.target reboot.target halt.target\n\
\n\
[Service]\n\
User=root\n\
Type=oneshot\n\
RemainAfterExit=true\n\
ExecStop=" > /etc/systemd/system/MinecraftAdminScripts.servic
sudo printf "$scriptsdir" >> /etc/systemd/system/MinecraftAdminScripts.service
sudo printf "/stopmcservers.sh\n\
ExecStart=" >> /etc/systemd/system/MinecraftAdminScripts.servic
sudo printf "$scriptsdir" >> /etc/systemd/system/MinecraftAdminScripts.service
sudo printf "/startmcservers.sh\n\
\n\
[Install]\n\
WantedBy=multi-user.target\n\
" >> /etc/systemd/system/MinecraftAdminScripts.service

sudo systemctl daemon-reload
sudo systemctl enable MinecraftAdminScripts.service
sudo systemctl start MinecraftAdminScripts.service
