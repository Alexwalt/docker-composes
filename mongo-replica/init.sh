#!/bin/bash

openssl rand -base64 745 > keyfile.key
# chown 999 keyfile.key
chmod 600 keyfile.key
for i in "mongo1" "mongo2" "mongo3" ; do 
    mkdir -p $i/mongo-shell
    mkdir -p $i/db
    # chown 999 $i/mongo-shell
done