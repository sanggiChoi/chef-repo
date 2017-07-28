#!/bin/bash
rm -rf ~/.ssh/known_hosts

for i in $(seq 0 2)
do
   echo "Welcome host$i times"
   knife bootstrap 192.168.33.1$i -N host$i -x vagrant -i ~/.chef/insecure_private_key --sudo
done
