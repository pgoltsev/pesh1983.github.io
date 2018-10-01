#!/usr/bin/env bash
# Build site in 'production' environment and push changes to a server.
set -e

SCRIPT_PATH=`dirname $(realpath $0)`
JEKYLL_ENV=production "${SCRIPT_PATH}/jekyll.sh" build
"${SCRIPT_PATH}/deploy.sh"
