#!/bin/bash

source commonfuncs.sh
rm $logdir

echo " " > $logdir
logdatetime
echo "Log file cleared" >> $logdir

