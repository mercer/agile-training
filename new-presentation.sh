#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo Usage: `basename $0` PRESENTATION_NAME 1>&2
    exit 1
fi

PRESENTATION_NAME=$1

mkdir $PRESENTATION_NAME && \
    cd $PRESENTATION_NAME && \
    curl -OL  https://github.com/hakimel/reveal.js/archive/3.0.0.zip && \
    unzip 3.0.0.zip && \
    rm 3.0.0.zip

#git checkout-index -a -f --prefix=/destination/path/
