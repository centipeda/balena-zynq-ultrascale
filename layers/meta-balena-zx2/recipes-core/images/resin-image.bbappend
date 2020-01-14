IMAGES_FSTYPES_mars-zx2 = "balenaos-img"
IMAGES_FSTYPES_qemu-zynq7 = "balenaos-img"
BALENA_BOOT_PARTITION_FILES_mars-zx2 = " \
    boot.bin: \
    u-boot-${MACHINE}.img:/u-boot-dtb.img \
    uEnv.txt: \
    uImage: \
    device-trees/mars-zx2.dtb:/ \
    "
BALENA_BOOT_PARTITION_FILES_qemu-zynq7 = " \
    boot.bin: \
    u-boot-${MACHINE}.img:/u-boot-dtb.img \
    uEnv.txt: \
    uImage: \
    device-trees/mars-zx2.dtb:/ \
    "
