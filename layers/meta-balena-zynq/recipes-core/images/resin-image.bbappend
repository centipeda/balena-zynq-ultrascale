DEPENDS = "bootbin qemuwrapper-cross"

IMAGES_FSTYPES_zynq-generic = "balenaos-img"
IMAGE_FSTYPES_append_marspm3-zynq7 = "resinos-img"
RESIN_BOOT_PARTITION_FILES = "boot.bin: \
                              u-boot-${MACHINE}.img:/u-boot-dtb.img \
                              uEnv.txt: \
                              uImage: \
                              "
RESIN_BOOT_PARTITION_FILES_remove = "resin-logo.png:/splash/resin-logo.png \
                                     os-release:/os-release \
                                     system-connections/resin-sample.ignore:/system-connections/resin-sample.ignore \
                                     system-connections/README.ignore:/system-connections/README.ignore \
                                     "
#     " \
#     boot.bin: \
#     u-boot-${MACHINE}.img:/u-boot-dtb.img \
#     uEnv.txt: \
#     uImage:image.ub \
#     "
