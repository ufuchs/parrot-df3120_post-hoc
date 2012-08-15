#!/bin/bash

MINIFS_HOME=/home/ufuchs/minifs

DF3120_HOME="$MINIFS_HOME"/build-df3120

DRIVE=sdc1

umount /dev/"$DRIVE" 2> /dev/null

mkfs.ext2 /dev/"$DRIVE" -L PARROT

echo "dd-ing..."
dd if="$DF3120_HOME"/minifs-full-ext.img of=/dev/"$DRIVE"


