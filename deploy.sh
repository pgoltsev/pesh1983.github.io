#!/usr/bin/env bash
set -e

SCRIPT_PATH=`dirname $(realpath $0)`

cd "${SCRIPT_PATH}/src/_site"
git add .
git commit
git push
cd -
