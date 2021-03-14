 #!/bin/bash
rc-status
touch /run/openrc/softlevel
rc-service nginx restart
rc-service php-fpm7 start
#/usr/bin/telegraf &
sleep infinity