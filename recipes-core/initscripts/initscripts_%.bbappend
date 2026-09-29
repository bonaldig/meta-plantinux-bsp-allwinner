FILESEXTRAPATHS:prepend := "${THISDIR}:"

SRC_URI += "file://populate-volatile.sh"

do_install:append() {
	install -m 0755 ${WORKDIR}/populate-volatile.sh \
	${D}${sysconfdir}/init.d/populate-volatile.sh
}