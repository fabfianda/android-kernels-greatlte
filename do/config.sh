export ANDROID_MAJOR_VERSION=p
export ARCH=arm64
export SUBARCH=arm64
export DEVICE=exynos8895-greatlte
export DEVICE_DEFCONF="$DEVICE"_defconfig
make $DEVICE_DEFCONF
make menuconfig

make savedefconfig
cp defconfig arch/$ARCH/configs/$DEVICE_DEFCONF
