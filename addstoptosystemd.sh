#!/bin/bash
source commonfuncs.sh

servicepath="/etc/systemd/system/stopmcserver.service"

sudo rm $servicepath

sudo printf "[Unit]\n
Description=Stops minecraft servers on shutdown\n\
Before=shutdown.target reboot.target halt.target\n\
\n\
[Service]\n\
User=root\n\
Type=oneshot\n\
RemainAfterExit=true\n\
ExecStop=" > $servicepath
sudo printf "$scriptsdir" >> $servicepath
sudo printf "/stopmcservers.sh\n\
\n\
[Install]\n\
WantedBy=multi-user.target\n\
" >> $servicepath

sudo systemctl daemon-reload
sudo systemctl enable stopmcservers.service
sudo systemctl start stopmcservers.service
