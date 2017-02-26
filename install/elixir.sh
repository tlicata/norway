#!/usr/bin/env bash

DIR="/opt/elixir"

if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
    cd "$DIR"
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
    sudo dpkg -i erlang-solutions_1.0_all.deb
    sudo apt-get update
    sudo apt-get install elixir
else
    echo "Elixir already installed. Skipping."
fi
