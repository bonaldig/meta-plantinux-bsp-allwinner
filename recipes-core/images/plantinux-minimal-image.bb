SUMMARY = "A small image just capable of allowing a Orange Pi Zero3 to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image

IMAGE_ROOTFS_SIZE ?= "8192"
IMAGE_ROOTFS_EXTRA_SPACE:append = "${@bb.utils.contains("DISTRO_FEATURES", "systemd", " + 4096", "", d)}"

IMAGE_FSTYPES = "tar tar.zst wic wic.gz"

IMAGE_INSTALL:append = " \
	sunxi-tools \
	kernel-modules \
	iw \
	wpa-supplicant \
"

IMAGE_INSTALL:append:orangepi-zero3 = " \
	uwe5622-firmware
	orangepi-wifi-config
"

EXTRA_IMAGE_FEATURES += " \
	debug-tweaks
"