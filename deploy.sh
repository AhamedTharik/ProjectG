#!/bin/bash
result=$( sudo docker images -q abc-app:latest )
docker run -itd --name new-container -p 80:80 $result
CONTAINER_NAME='new-container'
x=$(docker ps -q -f status=running -f name=$new-container)
if [[ -n "$x" ]]; then
  echo 'Container exists'
else
  echo 'No container image'
fi

