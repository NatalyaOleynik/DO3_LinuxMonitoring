#!/bin/bash

total_folders=$(sudo find $1 -mindepth 1 -type d | wc -l)
top_5_folders=$(sudo du -h $1 | sort -rh | head -6 | grep $1. | cat -n | awk '{print $1 " - " $3 ", " $2}')
total_files=$(sudo find $1 -type f | wc -l)
conf=$(sudo find $1 -type f -name "*.conf"| wc -l)
text=$(sudo find $1 -type f -exec file {} + | grep text | wc -l)
exec=$(sudo find $1 -type f -executable | wc -l)
log=$(sudo find $1 -type f -name "*.log"| wc -l)
archive=$(sudo find $1 -type f -exec file {} + | grep -e archive -e compressed | wc -l)
links=$(sudo find $1 -type f -exec file {} + | grep ^l | wc -l)