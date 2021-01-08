#!/bin/bash
source commonfuncs.sh


printf "[Unit]\n
Description=Stops minecraft servers on shutdown\n\
Before=shutdown.target reboot.target halt.target\n\
\n\
[Service]\n\
User=root\n\
Type=oneshot\n\
RemainAfterExit=true\n\
ExecStop=" > test
printf "$scriptsdir" >> test
printf "/stopmcservers.sh\n\
\n\
[Install]\n\
WantedBy=multi-user.target\n\
" >> test