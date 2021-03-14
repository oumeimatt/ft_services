 #!/bin/bash
rc-status
touch /run/openrc/softlevel
/usr/bin/telegraf &
/grafana-7.3.2/bin/grafana-server --homepath grafana-7.3.2

sleep infinity