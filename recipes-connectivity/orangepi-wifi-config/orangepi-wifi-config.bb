SUMMARY = "Default Wi-Fi configuration for Orange Pi Zero 3"
DESCRIPTION = "Configures automatic WPA2 connection and DHCP on wlan0."
LICENSE = "CLOSED"

SRC_URI = " \
    file://wpa_supplicant-wlan0.conf \
    file://20-wlan0.network \
"

S = "${WORKDIR}"

RDEPENDS:${PN} = "wpa-supplicant"

do_install() {
    install -d ${D}${sysconfdir}/wpa_supplicant
    install -m 0600 ${S}/wpa_supplicant-wlan0.conf \
        ${D}${sysconfdir}/wpa_supplicant/wpa_supplicant-wlan0.conf

    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${S}/20-wlan0.network \
        ${D}${sysconfdir}/systemd/network/20-wlan0.network

    install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
    ln -sf ${systemd_system_unitdir}/wpa_supplicant@.service \
        ${D}${sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service
}

FILES:${PN} += " \
    ${sysconfdir}/wpa_supplicant/wpa_supplicant-wlan0.conf \
    ${sysconfdir}/systemd/network/20-wlan0.network \
    ${sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service \
"
