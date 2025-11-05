#!/bin/bash

size=$(free -h | head -2 | tail -1 | awk '{print $6}' | sed 's/Mi//g')

if [ "$size" -gt 100 ]; then
    echo "Current usage is ${size}MB" > percent2
    # mail -s "RAM usage alert" -c "abc@gmail.com" < percent2
fi
