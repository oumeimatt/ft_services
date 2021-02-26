FROM alpine

RUN apk update
RUN add nginx
RUN adduser -D -g 'www' wwww
RUN mkdir /www
RUN chown -R www:www var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY srcs/nginx.conf /etc/nginx/nginx.conf
CMD rc-service nginx start ; cat