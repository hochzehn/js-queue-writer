#!/usr/bin/env bash

if [ $# -ne 3 ]
then
    echo "Usage: entrypoint.sh RESTMQ_URL JOBS DATA"
else
    restmq_url=$1
    jobs=$2
    data=$3

    echo "$data" | parallel --jobs $jobs curl -s -X POST -d "value={}" "$restmq_url"
fi
