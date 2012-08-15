#!/bin/bash

INTERFACE=bnep0
INTERFACE_ADDR=192.168.1.2

ifconfig "$INTERFACE" "$INTERFACE_ADDR" netmask 255.255.255.0 up
route add -host 172.16.61.1 "$INTERFACE"

# firewall
iptables --table nat --append POSTROUTING --out-interface "$INTERFACE" -j MASQUERADE
iptables --append FORWARD --in-interface "$INTERFACE" -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
