#!/bin/sh

export SYSROOT=$NDK_HOME/platforms/android-19/arch-x86/  
export CROSS_COMPILE=$NDK_HOME/toolchains/x86-4.8/prebuilt/linux-x86_64/bin/i686-linux-android-
export CC=${CROSS_COMPILE}gcc
mkdir -p $PWD/jni/dist
./configure --prefix=$PWD/jni/dist --host=i686 CC="$CC --sysroot=$SYSROOT"
