#!/bin/bash
sudo ls
sudo redis-server &
until ./launch.sh; do
    echo "Crash, restarting" >&2
    sleep 1
done
