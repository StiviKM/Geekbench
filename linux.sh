#!/bin/bash

# Download Geekbench
wget https://cdn.geekbench.com/Geekbench-6.5.0-Linux.tar.gz

# Extract it
tar -xvf Geekbench-6.5.0-Linux.tar.gz

# Enter extracted folder
cd Geekbench-6.5.0-Linux || { echo "Folder not found"; exit 1; }

# Run the benchmark
./geekbench6

# Go back and clean up
cd ..
rm -rf Geekbench-6.5.0-Linux Geekbench-6.5.0-Linux.tar.gz

echo "Benchmark done and files cleaned up."
