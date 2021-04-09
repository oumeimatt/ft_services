 #!/bin/bash
rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb restart

echo "FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE DATABASE wp_db;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wp_db.* TO 'wp_user'@'%' IDENTIFIED BY '123';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY '123';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

mariadb < /home/phpmyadmin.sql
mariadb < /home/wp_db.sql
/usr/bin/telegraf &
sleep infinity