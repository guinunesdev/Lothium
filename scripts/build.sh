#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "$0")/.." && pwd -P)"

git submodule update --init --recursive && "$BASEDIR/scripts/applyPatches.sh" "$BASEDIR"

if [ "$1" == "--jar" ]; then
    pushd "$BASEDIR/Lothus-Proxy"
    mvn clean package
    popd
fi