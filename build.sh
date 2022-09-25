# export KDIR=/home/fabrizio/Source/Note8/Note-8-Exynos-Nethunter

export KDIR=$PWD


export CROSS_COMPILE=$KDIR/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-

echo $CROSS_COMPILE

export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64

make ARCH=arm64 exynos8895-greatlte_defconfig
make ARCH=arm64
