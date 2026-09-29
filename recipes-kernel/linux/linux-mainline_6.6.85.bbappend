
# SRC_URI:append:sun50i-h616 = " file://defconfig"

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-mainline:"

SRC_URI += " \
	file://axp313.cfg \
	file://network.cfg \
	file://busybox.cfg \
	file://config-usb-otg.patch \
"

KERNEL_FEATURES:append:orange-pi-zero3 = " bsp/h61x/orangepi-zero2-6_6.scc bsp/uwe5622/uwe5622-6_6.scc"