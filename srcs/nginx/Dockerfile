FROM alpine:3.12

RUN apk update 
RUN apk add nginx openrc --no-cache
RUN mkdir -p /run/nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir etc/nginx/ssl
COPY /srcs/default.conf etc/nginx/conf.d
COPY /srcs/ssl.crt /etc/nginx/ssl/
COPY /srcs/ssl.key /etc/nginx/ssl/
COPY /srcs/index.html /var/www/


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/


COPY /srcs/start.sh /
CMD ["sh" , "start.sh"]