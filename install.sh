#!/usr/bin/env bash
set -e

URL="https://raw.githubusercontent.com/Raven404xv/sub-template/main/sub.html"
DIR="/etc/3x-ui/sub_templates/xv"
FILE="$DIR/sub.html"

[[ $EUID -eq 0 ]] || {
    echo
    echo "✖ ERROR: Root access required."
    echo
    exit 1
}

mkdir -p "$DIR"

if curl -fsSL "$URL" -o /tmp/sub.html; then
    if grep -qiE '<html|<!doctype' /tmp/sub.html; then
        cp /tmp/sub.html "$FILE"
        chmod 644 "$FILE"
        rm -f /tmp/sub.html

        echo
        echo "=========================================="
        echo "       ✓ TEMPLATE INSTALLED"
        echo "=========================================="
        echo
        echo "  Location:"
        echo "  $FILE"
        echo
        echo "  Status: Ready"
        echo
    else
        echo
        echo "✖ ERROR: Invalid template file."
        echo
        rm -f /tmp/sub.html
        exit 1
    fi
else
    echo
    echo "✖ ERROR: Download failed."
    echo
    exit 1
fi