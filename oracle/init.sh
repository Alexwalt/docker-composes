#!/bin/bash
docker pull registry.cn-hangzhou.aliyuncs.com/helowin/oracle_11g
docker create  --name oracle11g registry.cn-hangzhou.aliyuncs.com/helowin/oracle_11g
mkdir -p data
docker cp oracle11g:/home/oracle ./data
chown 500.500 -R ./data/oracle
docker rm -f oracle11g
docker-compose up -d
docker-compose exec oracle bash