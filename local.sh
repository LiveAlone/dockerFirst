#!/bin/bash

# redis 本地持久化地址
docker run --name redis-server -d -v /Users/zyb/workspace/data/docker/redis:/data -p 6379:6379 redis:7.0

# mysql 持久化
docker run -d \
    --name mysql-server \
    -p 3306:3306 \
     -v /Users/zyb/workspace/data/docker/mysql:/var/lib/mysql \
     -e MYSQL_ROOT_PASSWORD=anywhere \
     -e MYSQL_DATABASE=test \
     mysql:8.0
