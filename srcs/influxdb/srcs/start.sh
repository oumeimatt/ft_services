#!/bin/bash 
rc-status
touch /run/openrc/softlevel
influx user create -n admin -p admin
influxd &
/usr/bin/telegraf &
sleep infinity