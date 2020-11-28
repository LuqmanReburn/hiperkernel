#!/bin/bash

export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH="$HOME/clang/protonc/bin:$PATH"
export PATH=${CLANG_PATH}:${PATH}
export CROSS_COMPILE=$HOME/gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android-
# export CROSS_COMPILE=/usr/bin/aarch64-linux-gnu-
# export CROSS_COMPILE=aarch64-linux-android-

make mrproper

make CC=clang O=out lineageos_h930_defconfig

make O=out CC=clang -j4
