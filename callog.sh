#!/bin/bash
cat /var/log/nginx/access.log | awk '{a[$1]+=1;}END{for(i in a){print a[i]" " i;}}' | sort -gr > ip.log
for line in $(cat ip.log | awk '{print $2}' )
do 
     curl -i -k --get --include "https://dm-81.data.aliyun.com/rest/160601/ip/getIpInfo.json?ip=$line" -H 'Authorization:APPCODE YOUR_API_KEY' >> location.log
done
tail -n -1 ip.log | awk '{print $2}' | tee ip.most
echo '-----------------ip logs------------------------------'
read IPMOST < ip.most
cat access.log | grep "$IPMOST" | awk '{print $7}' | tee ip.most.logs
