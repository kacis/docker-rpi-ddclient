#!/bin/sh

set -ex

time=${1:-300}

while [ 1 ]
do
  ddclient
  sleep $time
done