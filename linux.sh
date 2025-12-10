#!/bin/bash

# Download Geekbench
wget https://cdn.geekbench.com/Geekbench-6.5.0-Linux.tar.gz

# Extract it
tar -xvf Geekbench-6.5.0-Linux.tar.gz

# Enter extracted folder (name may change if version changes)
cd Geekbench-6.5.0-Linux || { echo "Folder not found"; exit 1; }

# Run the benchmark
./geekbench6
