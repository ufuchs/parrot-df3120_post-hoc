
#
# Copyright (c) 2012 Uli Fuchs <ufuchs@gmx.com>
# Released under the terms of the GNU GPL v2.0
#

#!/bin/sh

# BE AWARE. This must be an one liner whitout line breaks...
cat > "$STAGE_DIR"/99-"$DF3120_HOSTNAME".rules <<-EOF
	SUBSYSTEM=="net", ACTION=="add", ATTRS{idVendor}=="1d6b", ATTRS{idProduct}=="0102", ATTRS{product}=="EEM Gadget", NAME="usb0", RUN+="/usb0-up.sh"
EOF

cat > "$STAGE_DIR"/usb0-up.sh <<-EOF
	#!/bin/bash

	ifconfig usb0 down
	ifconfig usb0 $WORKSTATION_IP netmask $DF3120_SUBNET_MASK up
	route add -host $DF3120_IP usb0

	# firewall
	iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
	iptables --append FORWARD --in-interface usb0 -j ACCEPT

	echo 1 > /proc/sys/net/ipv4/ip_forward	
EOF

