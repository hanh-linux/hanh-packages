mkdir -p $(pwd)/lib/modules/$kver/kernel/drivers/cdrom
cp -r $sysroot/lib/modules/$kver/kernel/drivers/cdrom/cdrom.ko $(pwd)/lib/modules/$kver/kernel/drivers/cdrom/cdrom.ko
install -vDm755 $sysroot/sbin/losetup $(pwd)/sbin/losetup
cp -r $sysroot/lib/libsmartcols.so* $(pwd)/lib/
