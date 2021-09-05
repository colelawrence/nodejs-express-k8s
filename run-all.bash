#!/bin/bash

DEMO_SYS="$(uname -m)"

for f in x-*.sh;
do
  DEMO_NAME="$f-$DEMO_SYS"
  echo "Running sh $DEMO_NAME"
  header=$(
    echo "$f"
    echo "---------------------"
    cat "$f"
    echo "---------------------"
    echo "$DEMO_SYS"
    echo ""
    sh "$f" 2>&1
  )
  echo "$header" > "$DEMO_NAME.log"
  echo "Output at $DEMO_NAME.log"
  echo "-"
done

echo ""
echo ""
echo "Use the following to see some differences"
echo "git diff --no-index [path] [path]"
ls x-*.log

echo "e.g."
echo ""
echo "     git diff --no-index x-fail-docker-build.sh-arm64.log x-pass-docker-build-with-default-platform.sh-arm64.log"
echo ""
