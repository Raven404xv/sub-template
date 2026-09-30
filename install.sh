#!/usr/bin/env bash
set -e

DIR="/etc/3x-ui/sub_templates/xv"

if [[ $EUID -ne 0 ]]; then
    echo
    echo "✖ ERROR: Root access required."
    echo
    exit 1
fi

if [[ ! -d "$DIR" ]]; then
    echo
    echo "ℹ Template is not installed."
    echo
    exit 0
fi

rm -rf "$DIR"

echo
echo "=========================================="
echo
echo "        ✓ TEMPLATE REMOVED"
echo
echo "=========================================="
echo
echo "  Removed:"
echo "  $DIR"
echo