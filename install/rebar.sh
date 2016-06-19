#!/usr/bin/env bash

if [ ! -d rebar3 ]; then
    git clone https://github.com/erlang/rebar3.git
    cd rebar3
    ./bootstrap
    ./rebar3 local install
    echo "" >> ~/.bashrc
    echo "# Add rebar to path" >> ~/.bashrc
    echo "export PATH=$PATH:/home/vagrant/.cache/rebar3/bin" >> ~/.bashrc
fi
