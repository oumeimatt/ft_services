rc-status
touch /run/openrc/softlevel
rc-service nginx restart
echo "CREATE DATABASE wp_db;"
echo "GRANT ALL PRIVILEGES ON wp_db.* TO 'wp_user'@'localhost' IDENTIFIED BY '123';"
rc-service php-fpm7 start
/usr/bin/telegraf &
sleep infinity