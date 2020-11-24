#! /bin/bash


echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp -f /home/hutson/Platform/Jenkins/jenkins_data/workspace/pipeline-Maven-Docker/java-app/target/*.jar /home/hutson/Platform/Jenkins/pipeline/jenkins/build

echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "***********************************************"

cd /home/hutson/Platform/Jenkins/pipeline/jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
