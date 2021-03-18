 #!/bin/bash
rc-status
touch /run/openrc/softlevel
rc-service nginx restart
rc-update add sshd
/etc/init.d/sshd start
/usr/bin/telegraf &
sleep infinity