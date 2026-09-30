
# SRC_URI:append:sun50i-h616 = " file://defconfig"

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-mainline:"
FILESEXTRAPATHS:prepend := "${THISDIR}/../../../meta-sunxi/recipes-kernel/linux/linux-mainline/sunxi-kmeta:"
FILESEXTRAPATHS:prepend := "${THISDIR}/../../../meta-sunxi/recipes-kernel/linux/linux-mainline/sunxi-kmeta/bsp/h61x:"
FILESEXTRAPATHS:prepend := "${THISDIR}/../../../meta-sunxi/recipes-kernel/linux/linux-mainline/sunxi-kmeta/bsp/orange-pi-3lts:"
FILESEXTRAPATHS:prepend := "${THISDIR}/../../../meta-sunxi/recipes-kernel/linux/linux-mainline/sunxi-kmeta/bsp/uwe5622:"

SRC_URI += " \
	file://axp313.cfg \
	file://network.cfg \
	file://busybox.cfg \
	file://config-usb-otg.patch \
"

KERNEL_FEATURES:append:orangepi-zero3 = " bsp/h61x/h61x-common-6_6.scc bsp/h61x/orangepi-zero3-6_6.scc bsp/uwe5622/uwe5622-6_6.scc"