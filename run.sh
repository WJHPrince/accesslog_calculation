#!/bin/bash
########################################################
echo 'Step1:Confirm software installration:'
sudo apt-get update
sudo apt-get -y install cat awk sort python3
########################################################
echo 'Step2:Calculating most dir that asked:'
sudo cat /var/log/nginx/access.log | awk '{a[$7]+=1;}END{for(i in a){print a[i]" " i;}}' | sort -gr >> dir_sort

########################################################
