FROM alpine:3.12

RUN apk update
RUN apk add influxdb libc6-compat wget openrc
COPY /srcs/start.sh /
CMD ["sh", "start.sh"]