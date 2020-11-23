#! /bin/bash

echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp -f -r /home/hutson/Platform/Jenkins/pipeline/java-app/target/*.jar $PWD
echo "The Jar file has been successfully copied !!!"
echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "************************************************"

cd /home/hutson/Platform/Jenkins/pipeline/jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache

