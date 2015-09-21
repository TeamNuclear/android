repo sync -c -j5

. build/envsetup.sh

lunch full_bacon-userdebug

make -j8 otapackage