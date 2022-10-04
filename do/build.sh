# cleanup first
./do/clean.sh

# set constants 
export KDIR=$PWD
export CROSS_COMPILE=$KDIR/toolchain/gcc-cfp/gcc-cfp-jopp-only/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64
export DEF_CONFIG=nethunter_defconfig

# build
echo "Compiling..."
make ARCH=arm64 CROSS_COMPILE="$CROSS_COMPILE" "$DEF_CONFIG"
make CROSS_COMPILE="$CROSS_COMPILE" ARCH=arm64 -j24 > log_std.txt 2> log_err.txt
echo "Done"
tail log_std.txt
