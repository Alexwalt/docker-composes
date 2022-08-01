#!/bin/bash

export GITLAB_HOME=/etc/gitlab


docker run -d \
  --hostname 10.120.82.4 \
  -p 6443:443 -p 88:80 -p 23:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
  

#一句命令安装
docker run -d \
  --hostname 10.120.82.4 \
  -p 6443:443 -p 88:80 -p 23:22 \
  --name gitlab  gitlab/gitlab-ce:latest