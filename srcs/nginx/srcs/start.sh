 #!/bin/bash
rc-status
touch /run/openrc/softlevel
rc-service nginx restart
rc-service telegraf start 
sleep infinity