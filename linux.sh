#!/bin/bash

# -------------------------
# Variables for cleanup
# -------------------------
GEARBENCH_TAR="Geekbench-6.5.0-Linux.tar.gz"
GEARBENCH_DIR="Geekbench-6.5.0-Linux"

# -------------------------
# Download Geekbench
# -------------------------
wget https://cdn.geekbench.com/$GEARBENCH_TAR

# -------------------------
# Extract
# -------------------------
tar -xvf "$GEARBENCH_TAR"

# -------------------------
# Run benchmark
# -------------------------
cd "$GEARBENCH_DIR" || { echo "Error: Geekbench folder not found"; exit 1; }
./geekbench6

# -------------------------
# Cleanup benchmark files safely
# -------------------------
cd ..
if [[ -f "$GEARBENCH_TAR" ]]; then
    rm -f "$GEARBENCH_TAR"
fi
if [[ -d "$GEARBENCH_DIR" ]]; then
    rm -rf "$GEARBENCH_DIR"
fi

echo "Benchmark done. Only Geekbench files cleaned."
