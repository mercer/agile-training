#!/bin/bash
set -e

if [ -z "$1" ]; then
    GH_PAGES='../agile-training-dist'
else
    GH_PAGES=$1
fi

MASTER="$( cd "$( dirname "$0" )" && pwd )"

cd ${GH_PAGES}
git rm -rf *
cp -rf ${MASTER}/* ${GH_PAGES}
git add -A
git commit -m "update to new version"
git push origin gh-pages
