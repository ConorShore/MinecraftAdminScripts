#!/bin/bash
### BEGIN INIT INFO
# Provides:          stopmcservers
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     6
# Default-Stop:      0 1 2 3 4 5
# Short-Description: Shutdown mcservers
# Description:       Shutdown mcserevrs
### END INIT INFO

sudo screen -list | grep -v "screen"  | cut -d$'\t' -f 2 | cut -d"." -f 1 | xargs -Ihere sh -c "sudo screen -S here -p 0 -X stuff 'stop^M'"
