#!/bin/bash

BASENAME="./conf/packages/95filesystems.sh"

if [ ! -f "$BASENAME".org ]; then
  cp "$BASENAME" "$BASENAME".org
fi

patch -p1 < ext2fs.diff
