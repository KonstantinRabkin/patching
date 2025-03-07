#!/bin/bash
unreachable_found=false

  while IFS= read -r i; do
    if ! ping -c 1 -W 1 "$i" &> /dev/null; then
        echo "$i is unreachable"
        unreachable_found=true
fi
done < /home/X/hostgroups/hosts
