# docker-rpi-ddclient
An Alpine Linux Docker container for Rasberry Pi with ddclient.   
ddclient: http://ddclient.sf.net

## Docker image
[![](https://images.microbadger.com/badges/image/kacis/docker-rpi-ddclient.svg)](https://microbadger.com/images/kacis/docker-rpi-ddclient "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kacis/docker-rpi-ddclient.svg)](https://microbadger.com/images/kacis/docker-rpi-ddclient "Get your own version badge on microbadger.com")

## Build
[![Build Status](https://travis-ci.org/kacis/docker-rpi-ddclient.svg?branch=release)](https://travis-ci.org/kacis/docker-rpi-ddclient)

## How run for www.noip.com
### Create config file
Fill `ddclient.conf-sample`.   
`<user>` = user name from noip.com   
`<pass>` = password from noip.com   
`<domain>` = one or more domains (one domain per line) from noip.com   
Rename `ddclient.conf-sample` to `ddclient.conf`
### Run
```
docker run -d --name=ddclient -v "$PWD/ddclient.conf:/etc/ddclient/ddclient.conf" kacis/docker-rpi-ddclient
```
