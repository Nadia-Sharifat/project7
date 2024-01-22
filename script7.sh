#!/bin/bash
INPUT="/var/class/scripts/listIp.txt"
OUTPUT="/var/class/scripts/pingResult_$(hostname)_$(date +%Y%m%d).log"
for IP in $(cat $INPUT)
do
ping -c 3 $IP >> $OUTPUT
done
