rc-status
touch /run/openrc/softlevel
rc-service nginx restart
rc-service php-fpm7 start
/bin/sh