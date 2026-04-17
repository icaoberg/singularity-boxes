#!/bin/bash
#
# test.sh — Smoke test for the singularity-boxes-2.3.1.sif image.
#
# Usage: ./test.sh
#
# Prints the directory tree, then runs boxes inside the container to render a
# sample quote in the "peek" box style, verifying the image is functional.
#
# Copyright © 2026 Pittsburgh Supercomputing Center.
# All Rights Reserved.

tree .

echo -e '"Spartans! Ready your breakfast and eat hearty, for tonight, we dine in hell!"' | singularity exec singularity-boxes-2.3.1.sif boxes -d peek -a c -s 40x11
