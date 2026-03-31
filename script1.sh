#!/bin/bash

echo "===== SYSTEM INFORMATION REPORT ====="
echo "Date: $(date)"
echo ""

echo "---- System Details ----"
echo "Hostname: $(hostname)"
echo "OS: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"
echo ""

echo "---- CPU Info ----"
lscpu | grep "Model name"
echo ""

echo "---- Memory Info ----"
free -h
echo ""

echo "---- Disk Usage ----"
df -h
echo ""

echo "===== END OF REPORT ====="