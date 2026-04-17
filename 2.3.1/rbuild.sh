#!/bin/bash
#
# rbuild.sh — Build the Singularity image for boxes v2.3.1 using remote build.
#
# Usage: ./rbuild.sh
#
# Removes any existing .sif image, then rebuilds from the Singularity
# definition file using the Sylabs remote build service (no sudo required).
#
# Copyright © 2026 Pittsburgh Supercomputing Center.
# All Rights Reserved.

IMAGE=singularity-boxes-2.3.1.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

singularity build --remote $IMAGE $DEFINITION
