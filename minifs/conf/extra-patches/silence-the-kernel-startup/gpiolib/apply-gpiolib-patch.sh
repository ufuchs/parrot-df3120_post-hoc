#!/bin/bash

BASENAME="./build-df3120/linux/arch/arm/plat-s3c24xx/gpiolib.c"

if [ ! -f "$BASENAME".org ]; then
  cp "$BASENAME" "$BASENAME".org
fi

patch -p1 < gpiolib.diff
