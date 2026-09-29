
# SRC_URI:append:sun50i-h616 = " file://defconfig"

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-mainline:"

SRC_URI += " \
file://axp313.cfg \
"