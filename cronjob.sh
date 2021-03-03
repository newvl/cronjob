#!/bin/bash

for(( i=1; i <=50; i++ ))
do
	mix='nym-mixnode'
	nymmixnode=${mix}${i}
	if [[ ! "$(/usr/sbin/service ${nymmixnode} status)" =~ "start/running" ]]
	then
		/usr/sbin/service ${nymmixnode} start
	fi
	sleep 45
done
