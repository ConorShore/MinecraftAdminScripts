#!/bin/bash
find /home/minecraft0/ -name "server.properties" | xargs cat | grep server-port | cut -f 2 -d "=" | xargs -n 1 -Ihere upnpc -r here here TCP


