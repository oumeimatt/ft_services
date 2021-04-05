FROM alpine:3.12

RUN apk update
RUN apk add openrc --no-cache vsftpd openssl
COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN adduser admin -D && echo "admin:123" | chpasswd
RUN mkdir -p /home/admin/ftp/files
RUN chmod 550 /home/admin/ftp && chmod 750 /home/admin/ftp/files && chown -R admin: /home/admin/ftp/
COPY /srcs/ftps.pem /etc/ssl/


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/

COPY /srcs/healthy.sh /
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]