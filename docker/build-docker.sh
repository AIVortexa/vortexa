#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-AIVortexa/vortexad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/vortexad docker/bin/
cp $BUILD_DIR/src/vortexa-cli docker/bin/
cp $BUILD_DIR/src/vortexa-tx docker/bin/
strip docker/bin/vortexad
strip docker/bin/vortexa-cli
strip docker/bin/vortexa-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
