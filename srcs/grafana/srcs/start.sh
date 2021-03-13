 #!/bin/bash
rc-status
touch /run/openrc/softlevel
rc-service telegraf start
/grafana-7.3.2/bin/grafana-server --homepath grafana-7.3.2

sleep infinity