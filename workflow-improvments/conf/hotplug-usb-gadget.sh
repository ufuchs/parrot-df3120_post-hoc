#
# Copyright (c) 2012 Uli Fuchs <ufuchs@gmx.com>
# Released under the terms of the GNU GPL v2.0
#

#!/bin/sh

STAGE_DIR=../stage

# BE AWARE. This must be an one liner whitout line breaks...
cat > "$STAGE_DIR"/99-parrot-df3120.rules <<-EOF
	SUBSYSTEM=="net", ACTION=="add", ATTRS{idVendor}=="1d6b", ATTRS{idProduct}=="0102", ATTRS{product}=="EEM Gadget", NAME="usb0", RUN+="/usb0-up.sh"
EOF

cat > "$STAGE_DIR"/usb0-up.sh <<-EOF
	#!/bin/bash

	# typeset -i num
	# num=`ifconfig -a | grep usb0 | wc -l`

	ifconfig usb0 down
	ifconfig usb0 172.16.61.2 netmask 255.255.255.0 up
	route add -host 172.16.61.1 usb0

	# firewall
	iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
	iptables --append FORWARD --in-interface usb0 -j ACCEPT

	echo 1 > /proc/sys/net/ipv4/ip_forward	
EOF

HAS_ENTRY_IN_ETC_HOSTS=$(grep "parrot-df3120" /etc/hosts | wc -l)
# 172.16.61.1	parrot-df3120
