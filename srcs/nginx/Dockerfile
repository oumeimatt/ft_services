FROM alpine:3.12
EXPOSE 80 443 22
RUN apk update 
RUN apk add nginx openrc --no-cache sudo openssh
RUN mkdir -p /run/nginx
RUN adduser -g 'Nginx www user' --disabled-password -h /home/www/ oel-yous && echo "oel-yous:oel-yous" | chpasswd && chown -R oel-yous:oel-yous /home/ && chown -R oel-yous:oel-yous /var/lib/nginx
RUN echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel
RUN adduser oel-yous wheel
RUN mkdir etc/nginx/ssl
COPY /srcs/default.conf etc/nginx/conf.d
COPY /srcs/ssl.crt /etc/nginx/ssl/
COPY /srcs/ssl.key /etc/nginx/ssl/
COPY /srcs/index.html /var/www/


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/
RUN ssh-keygen -A
RUN echo "oel-yous:root" | chpasswd

COPY /srcs/start.sh /
CMD ["sh" , "start.sh"]