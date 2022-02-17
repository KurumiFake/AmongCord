#!/usr/bin/env bash

PS1="$"
basedir=`pwd`

function update {
    cd "$basedir/$1"
    git fetch && git reset --hard origin/master
    cd "$basedir/$1/.."
    git add $1
}

update FlameCord

# Update submodules
git submodule update --recursive
