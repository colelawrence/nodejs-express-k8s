#!/bin/sh

echo "-- tilt.dev/demo-base Architecture"
docker image inspect tilt.dev/demo-base | jq  '.[0]["Architecture"]'
echo ""
echo "-- tilt.dev/demo-base full inspect"
docker image inspect tilt.dev/demo-base | jq
