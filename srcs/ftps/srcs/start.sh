 #!/bin/bash
rc-status
rc-update add vsftpd default
touch /run/openrc/softlevel
rc-service vsftpd start
rc-service telegraf start
#/bin/sh