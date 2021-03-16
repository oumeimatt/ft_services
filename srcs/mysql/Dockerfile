FROM alpine:3.12

RUN apk update
RUN apk add openrc 
RUN apk add mariadb mariadb-common mariadb-client


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d
COPY ./srcs/telegraf.conf /etc/telegraf/
COPY ./srcs/wp_db.sql /home/
COPY ./srcs/phpmyadmin.sql /home/

COPY /srcs/start.sh /
CMD ["sh", "start.sh"]