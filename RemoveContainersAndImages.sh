#!/bin/bash

docker ps -a
docker images

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi -f $(docker images -q -a)

docker ps -a
docker images