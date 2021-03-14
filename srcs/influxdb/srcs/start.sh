#!/bin/bash 
rc-status
touch /run/openrc/softlevel
influx user create -n admin -p admin
influxdb &
/usr/bin/telegraf &
sleep infinity