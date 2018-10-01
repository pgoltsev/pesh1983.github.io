#!/usr/bin/env bash
set -e

SCRIPT_PATH=`dirname $(realpath $0)`
if [ "$1" == "serve" ]; then
    export DOCKER_EXPOSE="-p 4000:4000 -p 35729:35729 -p 3000:3000 -p 80:4000"
fi
"${SCRIPT_PATH}/docker-run.sh" jekyll $@
