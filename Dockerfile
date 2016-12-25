FROM ctarwater/armhf-alpine-rpi-base

MAINTAINER Milan Kacalek <kacis.m@gmail.com>

RUN apk add --no-cache perl perl-io-socket-ssl
RUN mkdir -p /var/cache/ddclient/


ADD ddclient /usr/bin/
ADD run.sh /usr/bin/

ENTRYPOINT ["run.sh"]