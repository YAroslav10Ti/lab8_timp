#!/bin/bash
echo "Building project..."
cd /app/src
mkdir -p build
cd build
cmake ..
make
echo "Build completed at $(date)" > /app/build_log.txt
echo "Build artifacts:" >> /app/build_log.txt
ls -la /app/src/build >> /app/build_log.txt
