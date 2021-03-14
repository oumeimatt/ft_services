 #!/bin/bash
rc-status
rc-update add vsftpd default
touch /run/openrc/softlevel
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf &
/usr/bin/telegraf &
sleep infinity