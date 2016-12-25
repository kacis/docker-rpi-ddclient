#!/bin/sh

set -ex

cd $1

apk add --no-cache ca-certificates wget
mkdir -p /tmp/
rm -f /tmp/ddclient-3.8.2.tar.bz2
wget "http://downloads.sourceforge.net/project/ddclient/ddclient/ddclient-3.8.2/ddclient-3.8.2.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fddclient%2F&ts=1408222484&use_mirror=softlayer-dal" -O /tmp/ddclient-3.8.2.tar.bz2
tar -xvf /tmp/ddclient-3.8.2.tar.bz2
cp ddclient-3.8.2/ddclient ./ 