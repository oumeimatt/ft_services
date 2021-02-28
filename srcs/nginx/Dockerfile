FROM alpine:latest
RUN apk upgrade
RUN apk update
RUN apk add nginx
EXPOSE 80 443
RUN mkdir -p /run/nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY default.conf etc/nginx/conf.d
RUN mkdir etc/nginx/ssl
COPY ssl.crt /etc/nginx/ssl/
COPY ssl.key /etc/nginx/ssl/
COPY index.html /var/www/
CMD  rc-service nginx restart && cat &