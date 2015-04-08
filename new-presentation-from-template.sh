#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo Usage: `basename $0` PRESENTATION_NAME 1>&2
    exit 1
fi

PRESENTATION_NAME=$1

cp -r template $PRESENTATION_NAME
