FROM alpine:3.12

RUN apk update
RUN apk add influxdb libc6-compat wget openrc


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/


COPY /srcs/healthy.sh /
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]