#!/bin/bash
# program name: pingall.sh
date
cat /home/osboxes/ansible/script/list.txt | while read output
do
   ping -c 1 "$output" > /dev/null
   if [ $? -eq 0 ]; then
   echo "clients are $output  up"
   else "clients are $output down"
fi

done
