#! /bin/bash

echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp -r /home/hutson/Platform/Jenkins/pipeline/java-app/target/*.jar /home/hutson/Platform/Jenkins/pipeline/jenkins/build
echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "************************************************"

cd /home/hutson/Platform/Jenkins/pipeline/jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache

