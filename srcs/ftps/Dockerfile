FROM alpine:3.12

RUN apk update
RUN apk add openrc --no-cache
RUN apk add vsftpd
RUN apk add vsftpd-doc
RUN apk add openssl
COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN adduser admin -D && echo "admin:123" | chpasswd
RUN chown root:root /home/admin
RUN mkdir /home/admin/files
RUN chown admin:admin /home/admin/files
COPY /srcs/ftps.pem /etc/ssl/
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]