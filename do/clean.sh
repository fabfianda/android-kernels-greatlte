export KDIR=$PWD
export CROSS_COMPILE=$KDIR/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-

export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64

[ -f ./.config ] && rm .config && echo "removing .config"
[ -f ./.config.old ] && rm .config.old && echo "removing .config.old"
[ -f ./defconfig ] && rm defconfig && echo "removing defconfig"
make clean 
make mrproper
