FROM kacis/docker-rpi-perl-ssl:5.24.0

MAINTAINER Milan Kacalek <kacis.m@gmail.com>

COPY cache/ddclient /var/cache/ddclient
ADD ddclient /usr/bin/
ADD run.sh /usr/bin/

ENTRYPOINT ["run.sh"]