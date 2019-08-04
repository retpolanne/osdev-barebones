#!/bin/bash

GCC_VER=9.1.0
BINUTILS_VER=2.32

mkdir ./tmp
cd ./tmp

if [ -z ls ./tmp/binutils-$BINUTILS_VER.tar.xz ]; then
	wget https://ftp.gnu.org/gnu/binutils/binutils-$BINUTILS_VER.tar.xz
fi

if [ -z ls ./tmp/gcc-$GCC_VER.tar.xz ]; then
	https://ftp.gnu.org/gnu/gcc/gcc-9.1.0/gcc-$GCC_VER.tar.xz
fi

tar xvzf binutils-$BINUTILS_VER.tar.xz 
tar xvzf gcc-$GCC_VER.tar.xz 
