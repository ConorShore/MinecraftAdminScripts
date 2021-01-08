#!/bin/bash
source general.conf

function logdatetime {

	daten=$(date +'%m/%d/%Y')
	timen=$(date +"%T")
	echo -n $daten >> $logdir
	echo -n " " >> $logdir
	echo -n $timen >> $logdir
	echo -n " " >> $logdir

}