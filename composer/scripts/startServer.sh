#!/bin/bash

mkdir -p /data/$HOSTNAME

wait-for locator:10334

gfsh start server --name=$HOSTNAME --locators=locator[10334] --dir=/data/$HOSTNAME/ "$@"

while true; do
  sleep 10
done
