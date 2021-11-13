#!/bin/bash

# cribbed from https://docs.mongodb.com/manual/tutorial/install-mongodb-enterprise-with-docker/

export MONGODB_VERSION=5.0
curl -O --remote-name-all https://raw.githubusercontent.com/docker-library/mongo/master/$MONGODB_VERSION/{Dockerfile,docker-entrypoint.sh}

export DOCKER_REPO=local IMAGE_NAME=mongodb
chmod 755 ./docker-entrypoint.sh
docker build -t $DOCKER_REPO/${IMAGE_NAME}:$MONGODB_VERSION .
rm ./docker-entrypoint.sh Dockerfile