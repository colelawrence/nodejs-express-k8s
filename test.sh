#!/bin/sh

echo ""
echo "--- clean up ---"
tilt down
docker image rm tilt.dev/demo-base

echo ""
echo "--- test.sh ---"
echo ""

# export DOCKER_DEFAULT_PLATFORM=linux/arm64
# docker build --rm --file=./base.dockerfile \
#   -t tilt.dev/demo-base \
#   ./package

tilt up --stream
