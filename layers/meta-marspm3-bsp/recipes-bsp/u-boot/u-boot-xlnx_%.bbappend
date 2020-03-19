SRC_URI_append = " file://marspm3-zynq7.dtb file://marspm3-zynq7-platform-auto.h file://marspm3-zynq7-platform-top.h"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
UBOOT_MAKE_TARGET_append = " EXT_DTB=${DEPLOY_DIR_IMAGE}/${MACHINE}-system.dtb"
DTB_NAME = "marspm3-zynq7.dtb"

do_configure_append() {
    install ${WORKDIR}/marspm3-zynq7.dtb ${DEPLOY_DIR_IMAGE}/${MACHINE}-system.dtb
    install ${WORKDIR}/marspm3-zynq7-platform-auto.h ${S}/include/configs/
    install ${WORKDIR}/marspm3-zynq7-platform-top.h ${S}/include/configs/
}
