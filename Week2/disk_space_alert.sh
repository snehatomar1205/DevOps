#!/bin/bash

THRESHOLD=80
EMAIL="snehatomar8612@gmail.com"

df -Ph | grep -vE '^Filesystem|tmpfs|cdrom' | while read output
do
  used=$(echo $output | awk '{print $5}' | sed 's/%//')
  partition=$(echo $output | awk '{print $1}')
  if [ $used -ge $THRESHOLD ]; then
    echo "Disk usage on $partition is $used% (>= $THRESHOLD)" | mail -s "Disk Space Alert: $used% used!" $EMAIL
  fi
done
