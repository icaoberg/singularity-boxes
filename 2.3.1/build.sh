#!/bin/bash
#
# build.sh — Build the Singularity image for boxes v2.3.1 using sudo.
#
# Usage: ./build.sh
#
# Removes any existing .sif image, then rebuilds from the Singularity
# definition file using a local privileged build (requires sudo).
#
# Copyright © 2026 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-boxes-2.3.1.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION
