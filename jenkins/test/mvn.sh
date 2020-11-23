#! /bin/bash

echo "****************************"
echo "****TESTING THE JAR*********"
echo "****************************"

WORKSPACE=/home/hutson/Platform/Jenkins/jenkins_data/workspace/Pipeline-Docker-Maven
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
