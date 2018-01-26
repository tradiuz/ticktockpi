FROM resin/armhf-alpine:latest
RUN apk add --no-cache chrony supervisor gpsd
WORKDIR /config
EXPOSE 123/udp
EXPOSE 323/udp
ADD supervisor.conf /etc/supervisor.conf
CMD ["supervisord","-c","/etc/supervisor.conf"]