 #!/bin/bash
 rc-status
 touch /run/openrc/softlevel
 influx user create -n admin -p admin
 rc-service influxdb start
 /bin/sh