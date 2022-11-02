#!/bin/bash

mkdir build && cd build
cmake .. \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_FIND_ROOT_PATH=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DREGEX_BACKEND=pcre2 \
    -DCMAKE_BUILD_TYPE=Release \
    -DUSE_SSH=ON

echo "Building..."
ninja -j${CPU_COUNT} || exit 1

echo "Installing..."
ninja install || exit 1
