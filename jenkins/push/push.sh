#! /bin/bash

echo "****************************"
echo "*****Preparing for Push*****"
echo "****************************"

IMAGE="maven-project"

echo "****Logging into Docker*****" 
docker login -u karthickcv -p $PASS

echo "*****Tagging the image******"

docker tag $IMAGE:$BUILD_TAG  karthickcv/$IMAGE:$BUILD_TAG

echo "******Pushing the Image into Docker Hub******"

docker push karthickcv/$IMAGE:$BUILD_TAG
