#!/bin/sh

sh ./reset.sh > /dev/null

export DOCKER_BUILDKIT=0

docker build --rm --file=./base.dockerfile \
  -t tilt.dev/demo-base \
  ./package \
&& \
docker build --rm --file=./app.dockerfile \
  -t tilt.dev/demo-app \
  . \
&& \
docker run --rm -it tilt.dev/demo-app

sh ./info.sh
