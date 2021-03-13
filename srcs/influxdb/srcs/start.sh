 #!/bin/bash
 rc-status
 touch /run/openrc/softlevel
 influx user create -n admin -p admin
 rc-service influxdb start
 rc-service telegraf start
sleep infinity