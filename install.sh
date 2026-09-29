#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# XVPN Subscription Theme Installer for Sanaei / 3x-ui
# Replace GITHUB_RAW_BASE after creating your GitHub repository.
# Example:
# https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main
# ============================================================

GITHUB_RAW_BASE="https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main"
INSTALL_DIR="/etc/3x-ui/sub_templates/xvpn"
TEMPLATE_URL="${GITHUB_RAW_BASE}/sub.html"

if [[ "${EUID}" -ne 0 ]]; then
  echo "[ERROR] این نصب‌کننده باید با root اجرا شود."
  echo "مثال: sudo bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh)"
  exit 1
fi

command -v curl >/dev/null 2>&1 || {
  echo "[INFO] curl نصب نیست؛ در حال نصب curl..."
  if command -v apt-get >/dev/null 2>&1; then
    apt-get update -y >/dev/null 2>&1
    apt-get install -y curl >/dev/null 2>&1
  elif command -v dnf >/dev/null 2>&1; then
    dnf install -y curl >/dev/null 2>&1
  elif command -v yum >/dev/null 2>&1; then
    yum install -y curl >/dev/null 2>&1
  else
    echo "[ERROR] مدیر بسته پشتیبانی‌شده پیدا نشد. curl را نصب کنید."
    exit 1
  fi
}

if [[ "${GITHUB_RAW_BASE}" == *"YOUR_USERNAME/YOUR_REPO"* ]]; then
  echo "[ERROR] آدرس GitHub داخل install.sh هنوز تنظیم نشده است."
  echo "خط GITHUB_RAW_BASE را با آدرس raw مخزن خودت عوض کن."
  exit 1
fi

echo "=============================================="
echo "   XVPN Subscription Theme Installer"
echo "=============================================="
echo "[1/4] ساخت مسیر تم..."
mkdir -p "${INSTALL_DIR}"

if [[ -f "${INSTALL_DIR}/sub.html" ]]; then
  BACKUP="${INSTALL_DIR}/sub.html.backup.$(date +%Y%m%d-%H%M%S)"
  cp -f "${INSTALL_DIR}/sub.html" "${BACKUP}"
  echo "[INFO] نسخه قبلی بکاپ شد: ${BACKUP}"
fi

echo "[2/4] دریافت تم از GitHub..."
TMP_FILE="$(mktemp)"
trap 'rm -f "${TMP_FILE}"' EXIT
curl -fL --retry 3 --connect-timeout 15 "${TEMPLATE_URL}" -o "${TMP_FILE}"

if ! grep -q '<html' "${TMP_FILE}" && ! grep -q '<!DOCTYPE' "${TMP_FILE}"; then
  echo "[ERROR] فایل sub.html معتبر به نظر نمی‌رسد."
  exit 1
fi

echo "[3/4] نصب تم..."
install -m 0644 "${TMP_FILE}" "${INSTALL_DIR}/sub.html"

# Keep the directory readable by the panel service.
chmod 0755 "${INSTALL_DIR}"
chmod 0644 "${INSTALL_DIR}/sub.html"

echo "[4/4] پایان نصب"
echo

echo "=============================================="
echo " نصب با موفقیت انجام شد"
echo "=============================================="
echo

echo "مسیر تم برای پنل Sanaei / 3x-ui:"
echo "${INSTALL_DIR}/"
echo
echo "در پنل برو به:"
echo "Settings → Subscription → Information"
echo "و در بخش: Sub Theme Directory"
echo "این مسیر را وارد کن:"
echo "${INSTALL_DIR}/"
echo
echo "سپس Save را بزن."
echo
