export KDIR=$PWD
export CROSS_COMPILE=$KDIR/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-

export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64

make clean 
make mrproper
