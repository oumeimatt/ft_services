FROM alpine:3.12

RUN apk upgrade
RUN apk update
RUN apk add nginx
RUN apk add openrc --no-cache
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
COPY /srcs/start.sh /
EXPOSE 80 443
CMD ["sh" , "start.sh"]