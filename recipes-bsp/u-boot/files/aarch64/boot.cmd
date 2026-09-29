# Default to (primary) SD
setenv bootargs 'console=ttyS0,115200 earlycon=uart8250,mmio32,0x05000000 ignore_loglevel loglevel=8 clk_ignore_unused root=/dev/mmcblk0p2 rootwait panic=10 initcall_debug'

load mmc 0:1 ${fdt_addr_r} ${fdtfile}
load mmc 0:1 ${kernel_addr_r} Image
booti ${kernel_addr_r} - ${fdt_addr_r}