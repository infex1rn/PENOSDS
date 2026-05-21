#!/usr/bin/env bash
set -euo pipefail

PROJECT="/workspace"
BUILD="$PROJECT/builds/live"
OUT="$PROJECT/builds/output"

echo "======================================"
echo "      PENOS LIVE ISO BUILD SYSTEM      "
echo "======================================"

rm -rf "$BUILD"
mkdir -p "$BUILD" "$OUT" "$PROJECT/logs"

cd "$BUILD"

lb clean --purge || true

lb config \
  --mode debian \
  --architectures amd64 \
  --distribution bookworm \
  --archive-areas "main contrib non-free-firmware" \
  --debian-installer false \
  --binary-images iso-hybrid \
  --mirror-bootstrap "http://deb.debian.org/debian/" \
  --mirror-chroot "http://deb.debian.org/debian/" \
  --mirror-binary "http://deb.debian.org/debian/" \
  --mirror-binary-security "http://security.debian.org/debian-security/" \
  --bootappend-live "boot=live components hostname=penos username=penos quiet splash" \
  --iso-application "PENOS" \
  --iso-publisher "INDEVSTUDIO" \
  --iso-volume "PENOS_DEV"

mkdir -p config/package-lists
mkdir -p config/includes.chroot/etc
mkdir -p config/includes.chroot/usr/local/bin

cat > config/package-lists/penos.list.chroot << 'PKGS'
linux-image-amd64
systemd-sysv
sudo
network-manager
openssh-client
curl
wget
git
vim
nano
htop
neofetch
xfce4
xfce4-terminal
lightdm
firefox-esr
PKGS

cat > config/includes.chroot/etc/os-release << 'OSREL'
PRETTY_NAME="PENOS Developer Preview"
NAME="PENOS"
VERSION_ID="0.1-dev"
VERSION="0.1 Developer Preview"
ID=penos
ID_LIKE=debian
HOME_URL="https://indevstudio.dev"
SUPPORT_URL="https://indevstudio.dev"
BUG_REPORT_URL="https://indevstudio.dev"
OSREL

cat > config/includes.chroot/etc/motd << 'MOTD'
Welcome to PENOS Developer Preview.

Project: PENOS
Owner: Infexjay
Studio: INDEVSTUDIO

Run:
  pen info
  pen doctor
MOTD

cat > config/includes.chroot/usr/local/bin/pen << 'PEN'
#!/bin/bash

case "$1" in
  info|"")
    echo "======================================"
    echo "        PENOS Developer Preview        "
    echo "======================================"
    echo "Studio: INDEVSTUDIO"
    echo "Version: 0.1-dev"
    echo "Base: Debian Bookworm"
    echo "Purpose: Developer-first Linux OS"
    echo "======================================"
    ;;

  doctor)
    echo "[PENOS DOCTOR]"
    echo "[OK] Kernel: $(uname -r)"
    echo "[OK] Architecture: $(uname -m)"
    echo "[OK] Hostname: $(hostname)"
    echo "[OK] User: $(whoami)"
    ;;

  update)
    echo "[PENOS UPDATE]"
    echo "PENOS update system coming soon."
    ;;

  *)
    echo "pen: unknown command '$1'"
    echo "Usage: pen {info|doctor|update}"
    exit 1
    ;;
esac
PEN

chmod +x config/includes.chroot/usr/local/bin/pen

echo "Starting PENOS ISO build..."
lb build 2>&1 | tee "$PROJECT/logs/penos-live-build.log"

cp -f binary.hybrid.iso "$OUT/PENOS-0.1-dev-amd64.iso"

echo "======================================"
echo "PENOS ISO BUILD COMPLETE"
echo "Output:"
echo "$OUT/PENOS-0.1-dev-amd64.iso"
echo "======================================"
