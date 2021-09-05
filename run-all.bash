#!/bin/bash

DEMO_SYS="$(uname -m)"

for f in x-*.sh;
do
  DEMO_NAME="$f-$DEMO_SYS"
  echo "Running sh $DEMO_NAME"
  time sh "$f" &> "$DEMO_NAME.log"
  echo "Output at $DEMO_NAME.log"
  echo "-"
done
