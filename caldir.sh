#!?bin/bash
cat access.log | awk '{a[$7]+=1;}END{for(i in a){print a[i]" " i;}}' | sort -g
