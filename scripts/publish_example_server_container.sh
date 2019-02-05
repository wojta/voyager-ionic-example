#!/bin/sh

[ -z "$CI" ] && echo "This script is meant to run only from CircleCI." && exit 1;
[ -z "$DOCKERHUB_USERNAME" ] && echo "Undefined DOCKERHUB_USERNAME, skipping publish" && exit 0;

docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD

#use TAG env. variable to create the container with the given tag
TAG="${TAG:-latest}"

NAMESPACE="vsazelci"
CONTAINER="$NAMESPACE/voyager-server-example-task:$TAG"
CONTAINER_LATEST="$NAMESPACE/voyager-server-example-task:latest"

echo "Building docker container $CONTAINER"
docker build -f Dockerfile -t "$CONTAINER" . && docker push "$CONTAINER" && \
docker tag "$CONTAINER" "$CONTAINER_LATEST" && docker push "$CONTAINER_LATEST"
