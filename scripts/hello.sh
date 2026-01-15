#!/bin/bash
#SBATCH --job-name=hello
#SBATCH --time=00:01:00
#SBATCH --mem=128M
#SBATCH --output=hello_%j.out

echo "Hello from the compute node!"
hostname
# Add some lines below
