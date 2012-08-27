#!/bin/bash

# gets the interface ip from a given network address and a given interface number
# @param $1	network address e.g. '172.61.16.0'
# @param $2	number of the interface e.g '1'
# @return	the interface ip e.g. '172.61.16.1'
function getDeviceIP() {
  NETWORK="$1"
  ary=(${NETWORK//./ })
  echo "${ary[0]}.${ary[1]}.${ary[2]}."$2""
}

