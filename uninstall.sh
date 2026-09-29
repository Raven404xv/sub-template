#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="/etc/3x-ui/sub_templates/xv"

if [[ "${EUID}" -ne 0 ]]; then
    echo "[ERROR] Please run as root."
    exit 1
fi

if [[ ! -d "$INSTALL_DIR" ]]; then
    echo "[INFO] Template is not installed."
    exit 0
fi

rm -rf "$INSTALL_DIR"

echo
echo "=========================================="
echo "       TEMPLATE REMOVED"
echo "=========================================="
echo
echo "Removed:"
echo "$INSTALL_DIR"
echo
echo "If this path is configured in Sanaei,"
echo "remove it from Sub Theme Directory."
echo
