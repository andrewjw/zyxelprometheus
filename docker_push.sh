#!/bin/bash

set -e

# £TRAVIS_TAG begins with a v
TAG=`echo $TRAVIS_TAG | sed 's/^.//'`

docker login --username andrewjw --password $DOCKER_TOKEN

docker build --build-arg VERSION=$TAG -t andrewjw/zyxelprometheus:$TAG .

docker push andrewjw/zyxelprometheus:$TAG
