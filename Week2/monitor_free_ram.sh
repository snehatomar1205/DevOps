#!/bin/bash

THRESHOLD=500

# free RAM (in MB)
FREE_RAM=$(free -m | awk 'NR==2 {print $4}')

echo "Free RAM: $FREE_RAM MB"

if [ $FREE_RAM -lt $THRESHOLD ]
then
    echo "ALERT: Low Free RAM! Only $FREE_RAM MB left."
fi
