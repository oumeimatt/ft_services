FROM alpine:3.12

RUN apk update
RUN apk add wget libc6-compat openrc --no-cache
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.2.linux-amd64.tar.gz
RUN tar -xzvf grafana-7.3.2.linux-amd64.tar.gz


RUN apk add --no-cache telegraf --repository http://dl-2.alpinelinux.org/alpine/edge/community
RUN mkdir /etc/telegraf
COPY ./srcs/telegraf.conf /etc/telegraf/
COPY ./srcs/grafana.db /grafana-7.3.2/data/

COPY /srcs/start.sh /
CMD ["sh", "start.sh"]