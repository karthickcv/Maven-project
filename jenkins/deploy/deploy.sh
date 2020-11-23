#! /bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

sudo scp -i /opt/prod /tmp/.auth 192.168.43.188:/tmp/.auth
