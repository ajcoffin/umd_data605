#!/usr/bin/env bash -e

REPO_NAME=gpsaggese
IMAGE_NAME=umd_data605_mongodb
FULL_IMAGE_NAME=$REPO_NAME/$IMAGE_NAME
docker image ls $FULL_IMAGE_NAME

CONTAINER_NAME=$IMAGE_NAME
docker run --rm -ti \
    --name $CONTAINER_NAME \
    -p 8888:8888 -p 5432:5432 \
    -v $(pwd):/data \
    $FULL_IMAGE_NAME
