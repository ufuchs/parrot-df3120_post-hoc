#!/bin/bash

CONF_DIR="./conf/"
export STAGE_DIR=$(pwd)"/stage"

if [ ! -d "$STAGE_DIR" ]; then
  mkdir "$STAGE_DIR"
fi

cd "$CONF_DIR"

# should run in loop
. ./00utils.sh
. ./01setenv.sh
. ./02add-df3120-to-etc-hosts.sh
. ./03hotplug-usb-gadget.sh

cd -




