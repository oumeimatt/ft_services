FROM alpine:3.12

RUN apk update
RUN apk add wget nginx openrc --no-cache
RUN mkdir -p /run/nginx
COPY /srcs/default.conf etc/nginx/conf.d/

RUN apk add php7-fpm php7-mcrypt php-mbstring php7-soap php7-session php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin
RUN cp -rf phpmyadmin /var/www/
COPY /srcs/config.inc.php /var/www/phpmyadmin
RUN mkdir /var/www/phpmyadmin/tmp && chmod 777 /var/www/phpmyadmin/tmp

RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/

COPY /srcs/healthy.sh /
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]