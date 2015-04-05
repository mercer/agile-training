#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo Usage: `basename $0` GH_PAGES_REPO_PATH 1>&2
    exit 1
fi

GH_PAGES=$1
MASTER="$( cd "$( dirname "$0" )" && pwd )"

cd ${GH_PAGES}
git rm -rf *
cp -rf ${MASTER}/* ${GH_PAGES}
git add -A
git commit -m "update to new version"
git push origin gh-pages
