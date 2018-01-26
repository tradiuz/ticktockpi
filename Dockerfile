FROM resin/armhf-alpine:latest
RUN apk add --no-cache chrony
WORKDIR /etc/chrony/
EXPOSE 123/udp
EXPOSE 323/udp
CMD ["/usr/sbin/chronyd","-d"]