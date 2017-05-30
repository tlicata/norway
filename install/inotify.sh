#!/usr/bin/env bash

# Running `mix phoenix.server` would error with:
#   `[error] backend port not found: :inotifywait`.
# The inotify-tools library is needed for live reloading.

sudo apt-get --yes install inotify-tools
