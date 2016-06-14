#!/usr/bin/env bash

if [ ! -d lfe ]; then
    git clone https://github.com/rvirding/lfe.git
    cd lfe
    make
fi
