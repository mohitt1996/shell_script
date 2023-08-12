#!/bin/bash

stop_container=$(docker ps | tail -n 1 | awk '{print $1}')
docker stop $stop_container
docker container prune
docker image prune
docker build -t mohit1996/myfirst:lates .
docker run -itd -p 8000:8000 mohit1996/myfirst:lates

