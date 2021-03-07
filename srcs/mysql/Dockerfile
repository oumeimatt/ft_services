FROM alpine:3.12
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
COPY /srcs/start.sh /

CMD ["sh", "start.sh"]