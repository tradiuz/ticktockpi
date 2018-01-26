FROM alpine
RUN apk update -U && apk upgrade \
    apk add chrony \
    mkdir /config 
    

WORKDIR /config

RUN ["chronyd","-d","-f /config/chrony.conf"]