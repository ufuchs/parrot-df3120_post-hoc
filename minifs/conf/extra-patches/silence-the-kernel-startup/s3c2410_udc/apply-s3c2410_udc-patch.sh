#!/bin/bash

BASENAME="./build-df3120/linux/drivers/usb/gadget/s3c2410_udc.c"

if [ ! -f "$BASENAME".org ]; then
  cp "$BASENAME" "$BASENAME".org
fi

patch -p1 < s3c4210_udc.diff
