#!/bin/bash

echo "======================================"
echo "        PENOS DEVELOPMENT SERVER       "
echo "======================================"
echo "Owner: Infexjay"
echo "Project: PENOS"
echo "Server OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "CPU:"
lscpu | grep 'Model name' || true
echo "RAM:"
free -h
echo "Disk:"
df -h /
echo "Workspace:"
pwd
echo "======================================"
