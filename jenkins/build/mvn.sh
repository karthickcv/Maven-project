#! /bin/bash

echo "****************************"
echo "****BUILDING JAR************"
echo "****************************"
WORKSPACE=/home/hutson/Platform/Jenkins/jenkins_data/workspace/pipeline-Maven-Docker
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
