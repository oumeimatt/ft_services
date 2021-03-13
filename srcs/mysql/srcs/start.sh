 #!/bin/bash
rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb start
echo "CREATE USER 'admin'@'localhost'  IDENTIFIED BY '123';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON admin.* TO 'admin'@'localhost' IDENTIFIED BY '123';" | mysql -u root
rc-service telegraf start
#/bin/sh