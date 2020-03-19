SRC_URI_append = " \
                 file://mars-pm3.dtsi \
                 "
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

do_debug() {
    bbwarn "FILESEXTRAPATHS: ${FILESEXTRAPATHS}"
    bbnote "FILESEXTRAPATHS: ${FILESEXTRAPATHS}"
}

addtask debug
