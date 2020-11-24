#! /bin/bash

echo "**************************************"
echo "********COPYING JAR*******************"
echo "**************************************"
cp -r /home/hutson/Platform/Jenkins/pipeline/java-app/target/*.jar $PWD
echo "************************************************"
echo "********BUILDING DOCKER IMAGE*******************"
echo "************************************************"

cd $PWD && docker-compose -f docker-compose-build.yml build --no-cache
