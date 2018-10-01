#!/usr/bin/env bash
SCRIPT_PATH=`dirname $(realpath $0)`
ENV_PATH="${SCRIPT_PATH}/.env"

set -a
. "${ENV_PATH}"
set +a

test -t 1 && USE_TTY="-t"
docker run --rm --env-file "${ENV_PATH}" \
  --volume="${SCRIPT_PATH}/src:/srv/jekyll" \
  --volume="${SCRIPT_PATH}/vendor/bundle:/usr/local/bundle" ${DOCKER_EXPOSE} \
  -e JEKYLL_ENV=${JEKYLL_ENV} \
  -i ${USE_TTY} jekyll/jekyll:${JEKYLL_VERSION} \
  $@
