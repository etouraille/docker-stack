#!/bin/bash

# unused, bunch of code to enable sendmail via docker
# probably not necessary in network=host mode
 
line=$(head -n 1 /etc/hosts)
line2=$(echo $line | awk '{print $2}')
 
echo "$line $line2.localdomain" >> /etc/hosts
