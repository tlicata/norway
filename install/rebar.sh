#!/usr/bin/env bash

# Install rebar
if [ ! -d rebar3 ]; then
    git clone https://github.com/erlang/rebar3.git
    cd rebar3
    ./bootstrap
    ./rebar3 local install
    echo "" >> ~/.bashrc
    echo "# Add rebar to path" >> ~/.bashrc
    echo "export PATH=$PATH:/home/vagrant/.cache/rebar3/bin" >> ~/.bashrc
fi

# Install LFE templates
TEMPLATE_DIR=~/.config/rebar3/templates
if [ ! -d rebar3_lfe_templates ]; then
    git clone https://github.com/arpunk/rebar3_lfe_templates.git
    mkdir -p $TEMPLATE_DIR
    cd rebar3_lfe_templates
    cp lfe_app/* $TEMPLATE_DIR/
    cp lfe_lib/* $TEMPLATE_DIR/
    cp lfe_release/* $TEMPLATE_DIR/
fi
