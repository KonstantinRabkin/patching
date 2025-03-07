#!/bin/bash

for host in $(cat /home/X/hostgroups/hosts)
do
    echo -n "$host "
    ssh -q "$host" 'uptime'
done
