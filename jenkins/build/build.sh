#! /bin/bash

echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp -f java-app/target/*.jar /home/hutson/Platform/Jenkins/pipeline/jenkins/build
echo "The Jar file has been successfully copied !!!"
echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "************************************************"

cd /home/hutson/Platform/Jenkins/pipeline/jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache

