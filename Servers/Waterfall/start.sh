#!/bin/bash

while true; do
    if [ -e server.jar ]
    then
        java -Xms1G -Xmx1G -jar server.jar nogui
        break
    else
        curl -o server.jar https://papermc.io/api/v2/projects/waterfall/versions/1.17/builds/450/downloads/waterfall-1.17-450.jar
    fi
done