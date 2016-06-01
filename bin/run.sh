#!/bin/sh

NAME="hochzehn/$(basename ${PWD})"

docker build --tag $NAME . > /dev/null

if [ $# -ne 3 ]
then
    echo "Usage: bin/run.sh RESTMQ_URL JOBS DATA"
else
    docker run \
      --rm \
      $NAME \
      $*
fi
