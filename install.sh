#!/usr/bin/env bash
set -euo pipefail

GITHUB_RAW_BASE="https://raw.githubusercontent.com/Raven404xv/sub-template/main"
INSTALL_DIR="/etc/3x-ui/sub_templates/xv"
TEMPLATE_URL="${GITHUB_RAW_BASE}/sub.html"

if [[ "${EUID}" -ne 0 ]]; then
    echo "[ERROR] Please run this installer as root."
    echo "Example:"
    echo "sudo bash <(curl -fsSL ${GITHUB_RAW_BASE}/install.sh)"
    exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
    echo "[INFO] curl is not installed. Installing..."

    if command -v apt-get >/dev/null 2>&1; then
        apt-get update -y
        apt-get install -y curl
    elif command -v dnf >/dev/null 2>&1; then
        dnf install -y curl
    elif command -v yum >/dev/null 2>&1; then
        yum install -y curl
    else
        echo "[ERROR] Could not install curl automatically."
        exit 1
    fi
fi

echo "=========================================="
echo "   Subscription Theme Installer"
echo "=========================================="
echo

echo "[1/4] Creating theme directory..."
mkdir -p "${INSTALL_DIR}"

if [[ -f "${INSTALL_DIR}/sub.html" ]]; then
    BACKUP="${INSTALL_DIR}/sub.html.backup.$(date +%Y%m%d-%H%M%S)"
    cp -f "${INSTALL_DIR}/sub.html" "${BACKUP}"
    echo "[INFO] Previous template backed up:"
    echo "${BACKUP}"
fi

echo
echo "[2/4] Downloading template from GitHub..."

TMP_FILE="$(mktemp)"
trap 'rm -f "${TMP_FILE}"' EXIT

curl -fL \
    --retry 3 \
    --connect-timeout 15 \
    "${TEMPLATE_URL}" \
    -o "${TMP_FILE}"

if [[ ! -s "${TMP_FILE}" ]]; then
    echo "[ERROR] sub.html could not be downloaded."
    exit 1
fi

if ! grep -qi '<html' "${TMP_FILE}" && ! grep -qi '<!doctype' "${TMP_FILE}"; then
    echo "[ERROR] Downloaded file does not appear to be a valid HTML file."
    exit 1
fi

echo
echo "[3/4] Installing template..."

install -m 0644 "${TMP_FILE}" "${INSTALL_DIR}/sub.html"

chmod 0755 "${INSTALL_DIR}"
chmod 0644 "${INSTALL_DIR}/sub.html"

echo
echo "[4/4] Installation completed."
echo

echo "=========================================="
echo "        INSTALLATION SUCCESS"
echo "=========================================="
echo
echo "Template path:"
echo "${INSTALL_DIR}/"
echo
echo "Sanaei / 3x-ui:"
echo "Settings -> Subscription -> Information"
echo
echo "Set Sub Theme Directory to:"
echo "${INSTALL_DIR}/"
echo
echo "Then click Save."
echo
