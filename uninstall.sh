#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="/etc/3x-ui/sub_templates/xvpn"

if [[ "${EUID}" -ne 0 ]]; then
  echo "[ERROR] با root اجرا کنید."
  exit 1
fi

if [[ ! -d "${INSTALL_DIR}" ]]; then
  echo "[INFO] تم نصب نشده یا مسیر وجود ندارد: ${INSTALL_DIR}"
  exit 0
fi

rm -rf "${INSTALL_DIR}"
echo "[OK] تم XVPN حذف شد: ${INSTALL_DIR}"
echo "اگر در پنل Sub Theme Directory تنظیم شده، آن مقدار را نیز پاک کنید یا به تم دیگری تغییر دهید."
