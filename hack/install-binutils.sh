#!/bin/bash

BINUTILS_VER=2.32
PREFIX="$HOME/opt/cross"
TARGET=i686-elf

mkdir -p ./tmp/build-binutils
cd ./tmp/build-binutils

../binutils-$BINUTILS_VER/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

echo "export PATH=$PREFIX/bin:$PATH" >> ~/.bashrc
