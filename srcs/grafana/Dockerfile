FROM alpine:3.12

RUN apk update
RUN apk add wget
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.2.linux-amd64.tar.gz
RUN tar -xzvf grafana-7.3.2.linux-amd64.tar.gz
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]