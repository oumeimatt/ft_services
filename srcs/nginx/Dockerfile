FROM alpine
RUN apk update && apk add \
    nginx \
    vim \
    openssl
RUN rm etc/nginx/sites-enabled/default
COPY default.conf etc/nginx/conf.d/
RUN mkdir etc/nginx/ssl
COPY ssl.crt /etc/nginx/ssl/
COPY ssl.key /etc/nginx/ssl/