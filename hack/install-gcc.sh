#!/bin/bash

GCC_VER=9.1.0
PREFIX="$HOME/opt/cross"
TARGET=i686-elf

mkdir -p ./tmp/build-gcc
cd ./tmp/build-gcc

if [ -z $(which -- $TARGET-as) ]; then
	echo "$TARGET-as not found"
	exit
fi
../gcc-$GCC_VER/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers

make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
