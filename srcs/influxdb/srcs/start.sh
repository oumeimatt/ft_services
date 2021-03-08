 #!/bin/bash
 rc-status
 touch /run/openrc/softlevel
 rc-service influxdb start
 /bin/sh