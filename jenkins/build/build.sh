#! /bin/bash


echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp  /java-app/target/*.jar /jenkins/build
echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "***********************************************"

cd /jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
