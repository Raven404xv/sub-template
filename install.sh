#!/usr/bin/env bash
set -e

URL="https://raw.githubusercontent.com/Raven404xv/sub-template/main/sub.html"
DIR="/etc/3x-ui/sub_templates/xv"
FILE="$DIR/sub.html"

[[ $EUID -eq 0 ]] || { echo "❌ Root required"; exit 1; }

mkdir -p "$DIR"

if curl -fsSL "$URL" -o /tmp/sub.html; then
    if grep -qiE '<html|<!doctype' /tmp/sub.html; then
        cp /tmp/sub.html "$FILE"
        chmod 644 "$FILE"
        rm -f /tmp/sub.html
        echo "✅ نصب قالب با موفقیت انجام شد"
        echo "📁 $FILE"
    else
        echo "❌ فایل قالب معتبر نیست"
        rm -f /tmp/sub.html
        exit 1
    fi
else
    echo "❌ دانلود قالب ناموفق بود"
    exit 1
fi