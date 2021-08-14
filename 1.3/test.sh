#!/bin/bash

tree .

echo '\"Spartans! Ready your breakfast and eat hearty, for tonight, we dine in hell!\"' | singularity exec singularity-boxes-1.3.sif boxes -d peek -a c -s 40x11
