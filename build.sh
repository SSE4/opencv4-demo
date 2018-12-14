#!/usr/bin/env bash

set -ex

mkdir -p build
pushd build

conan install -g cmake -s build_type=Release ..

cmake \
    -G "Unix Makefiles" \
    -DCMAKE_VERBOSE_MAKEFILE=1 \
    -DCMAKE_INSTALL_PREFIX=$PWD/../install \
    -DCMAKE_BUILD_TYPE=Release \
    ..
cmake --build . --target install

popd
