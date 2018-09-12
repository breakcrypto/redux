#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-andspay/andsd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/andsd docker/bin/
cp $BUILD_DIR/src/ands-cli docker/bin/
cp $BUILD_DIR/src/ands-tx docker/bin/
strip docker/bin/andsd
strip docker/bin/ands-cli
strip docker/bin/ands-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
