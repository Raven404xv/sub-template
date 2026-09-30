#!/usr/bin/env bash
set -euo pipefail

GITHUB_RAW_BASE="https://raw.githubusercontent.com/Raven404xv/sub-template/main"
INSTALL_DIR="/etc/3x-ui/sub_templates/xv"
TEMPLATE_URL="${GITHUB_RAW_BASE}/sub.html"

if [[ "${EUID}" -ne 0 ]]; then
    echo "[ERROR] Run as root."
    exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
    echo "[INFO] Installing curl..."

    if command -v apt-get >/dev/null 2>&1; then
        apt-get update -y >/dev/null 2>&1
        apt-get install -y curl >/dev/null 2>&1
    elif command -v dnf >/dev/null 2>&1; then
        dnf install -y curl >/dev/null 2>&1
    elif command -v yum >/dev/null 2>&1; then
        yum install -y curl >/dev/null 2>&1
    else
        echo "[ERROR] Cannot install curl."
        exit 1
    fi
fi

echo "=========================================="
echo "   Subscription Theme Installer"
echo "=========================================="
echo

echo "[1/4] Preparing directory..."
mkdir -p "$INSTALL_DIR"

if [[ -f "$INSTALL_DIR/sub.html" ]]; then
    BACKUP="$INSTALL_DIR/sub.html.backup.$(date +%Y%m%d-%H%M%S)"
    cp -f "$INSTALL_DIR/sub.html" "$BACKUP"
    echo "[INFO] Backup created."
fi

echo "[2/4] Downloading template..."

TMP_FILE="$(mktemp)"
trap 'rm -f "$TMP_FILE"' EXIT

if ! curl -fsSL \
    --retry 3 \
    --connect-timeout 15 \
    "$TEMPLATE_URL" \
    -o "$TMP_FILE"; then
    echo "[ERROR] Download failed."
    exit 1
fi

if [[ ! -s "$TMP_FILE" ]]; then
    echo "[ERROR] Template file is empty."
    exit 1
fi

if ! grep -qi '<html' "$TMP_FILE" && ! grep -qi '<!doctype' "$TMP_FILE"; then
    echo "[ERROR] Invalid HTML template."
    exit 1
fi

echo "[3/4] Installing template..."

install -m 0644 "$TMP_FILE" "$INSTALL_DIR/sub.html"

chmod 0755 "$INSTALL_DIR"
chmod 0644 "$INSTALL_DIR/sub.html"

echo "[4/4] Done."
echo
echo "=========================================="
echo "       INSTALLATION SUCCESS"
echo "=========================================="
echo
echo "Path:"
echo "$INSTALL_DIR/"
echo
echo "Set this in Sanaei / 3x-ui:"
echo "Settings -> Subscription -> Information"
echo "Sub Theme Directory:"
echo "$INSTALL_DIR/"
echo