#!/usr/bin/env bash
set -e
LIB="ginger-liner.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/littlealcove/libbasaltfield/releases/download/golden-badger-frosty-garden/ginger-liner.a"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
