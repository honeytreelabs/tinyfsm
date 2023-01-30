#!/bin/bash

set -xe

mkdir -p build  \
    && cd build \
    && cmake \
           -GNinja \
           -DCMAKE_BUILD_TYPE=Debug \
           -DCMAKE_EXPORT_COMPILE_COMMANDS=True .. \
    && ninja -v \
    && cd .. \
    && ln -sf build/compile_commands.json .
