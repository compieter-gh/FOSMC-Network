#!/bin/bash

while true; do
    if [ -e server.jar ]
    then
        java -Xms2G -Xmx2G -jar server.jar nogui
        break
    else
        curl -o server.jar https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/284/downloads/paper-1.17.1-284.jar
    fi
done