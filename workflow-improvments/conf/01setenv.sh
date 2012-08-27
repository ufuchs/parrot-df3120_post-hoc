#!/bin/bash

##
# please adjust this for your environment
###

# subnetwork for the DF3120
export DF3120_NETWORK="172.16.61.0"
export DF3120_SUBNET_MASK="255.255.255.0"

# interface numbers 
DF3120_IF_NUM=1   	# gives you e.g '172.16.61.1'
WORKSTATION_IF_NUM=2

# settings for the DF3120
export DF3120_HOSTNAME="parrot-df3120"

##
# end of 'please adjust this for your environment'
###

export DF3120_IP="$(getDeviceIP "$DF3120_NETWORK" "$DF3120_IF_NUM")"
export WORKSTATION_IP="$(getDeviceIP "$DF3120_NETWORK" "$WORKSTATION_IF_NUM")"

