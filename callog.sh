#!/bin/bash
cat /var/log/nginx/access.log | awk '{a[$1]+=1;}END{for(i in a){print a[i]" " i;}}' | sort -g > ip.log
tail -n -1 ip.log | awk '{print $2}' | tee ip.most
echo '-----------------ip logs------------------------------'
read IPMOST < ip.most
cat access.log | grep "$IPMOST" | awk '{print $7}' | tee ip.most.logs
