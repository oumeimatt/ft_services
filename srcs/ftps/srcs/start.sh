 #!/bin/bash
rc-status
rc-update add vsftpd default
touch /run/openrc/softlevel
rc-service vsftpd start
/usr/bin/telegraf &
sleep infinity