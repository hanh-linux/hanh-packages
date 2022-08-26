cat << EOF
Repository: core
- Add    : 
	+ libcxx, libcxxabi (llvm-runtimes)
	+ confuse
	+ make_ext4fs 
	+ vi (busybox)
- Remove : 
	+ e2fsprogs 
	+ nano
- Merge  :
	+ alpine-headers -> musl 
	+ libunwind      -> llvm-runtimes 
- Move   : 
	+ fts -> musl-fts
	+ musl-locale -> musl-locales
	+ gnu/wget -> core/wget (busybox)
	+ utils/dbus -> core/dbus 
	+ utils/libdbus -> core/libdbus (dbus)
	+ utils/dhcpcd -> core/dhcpcd
	+ utils/dhcp-client -> core/dhcp-client (dhcpcd)
	+ utils/libnl -> core/libnl 
	+ utils/libmnl -> core/libmnl 
	+ utils/iwd -> core/iwd 
	+ utils/ead -> core/ead (iwd with flavor=full)
	+ utils/iproute2 -> core/iproute2 
	+ utils/libedit -> core/libedit
	+ utils/libtirpc -> core/libtirpc
	+ utils/pfetch -> core/pfetch
	+ utils/wpa_supplicant -> core/wpa_supplicant
	+ utils/openrc-services	-> core/openrc-services
- Update packages to newer version   

EOF
