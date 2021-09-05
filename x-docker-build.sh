#!/bin/sh

sh ./reset.sh > /dev/null

docker build --rm --file=./base.dockerfile \
  -t tilt.dev/demo-base \
  ./package

sh ./info.sh
