#!/bin/bash

###############################################################################
# Copyright (c) 2012 Uli Fuchs <ufuchs@gmx.com>
# Released under the terms of the GNU GPL v2.0
###############################################################################
# 
# this script is a wrapper for the basic 'minifs_build.sh' script.
# it sets the necessary environment variables
#	MINIFS_BOARD	to 'df3120'
#	PATH		to 'PATH=$PATH:"$TOOLCHAIN_HOME"/bin'
# there is no longer any need to adjust the environment manually.
# even reasonable if you have more than one minifs project on your desk.
#
###############################################################################
#
# Update 2012-09-16
# ------------------
# There is no longer any need for a 'TOOLCHAIN_HOME' variable.
# See
#   https://sites.google.com/site/repurposelinux/df3120
# section
#   Toolchain/rootfs
#
# The current version of 'minifs' (esp. in 'conf/arch/armv4t.sh') defines
# a variable called 'TARGET_FULL_ARCH' which contains this information.
# On the other hand this variable 'TARGET_FULL_ARCH' is used to populate the
# 'CROSS_BASE' and 'CROSS' variables in the 'minifs-build.sh'.
###############################################################################

BASE="$(pwd)"

export MINIFS_BOARD=df3120

# location of the used toolchain
# TOOLCHAIN_HOME="$BASE"/toolchain/arm-v4t-linux-uclibcgnueabi

# prevents multiple concatenations
# if [[ $PATH != *"$TOOLCHAIN_HOME"* ]]; then
#   export PATH=$PATH:"$TOOLCHAIN_HOME"/bin
# fi

# invokes the true 'minifs_build.sh' script
"$BASE"/minifs_build.sh "$@"


