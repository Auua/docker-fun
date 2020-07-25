#!/bin/sh

echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin

git clone $GIT_URL

basename=$(basename $GIT_URL)
GIT_REPO=${basename%.*}

cd $GIT_REPO/

docker build -t $DOCKER_USERNAME/$REPO .

docker push $DOCKER_USERNAME/$REPO:latest