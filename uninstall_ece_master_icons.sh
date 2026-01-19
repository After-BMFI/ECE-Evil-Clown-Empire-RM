#!/bin/bash
set -e

ECE_ROOT="/opt/ECE"
ICON_DIR="$ECE_ROOT/icons"

echo "[*] Uninstalling ECE master icon pack (SafeCraker + MacChanger)"

# Remove /opt/ECE icons
sudo rm -f "$ICON_DIR/safecraker.png" "$ICON_DIR/safecraker_256x256.png" 2>/dev/null || true
sudo rm -f "$ICON_DIR/macchanger.png" "$ICON_DIR/macchanger_256x256.png" 2>/dev/null || true

# Remove hicolor theme icons
sudo rm -f /usr/share/icons/hicolor/256x256/apps/safecraker.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/128x128/apps/safecraker.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/96x96/apps/safecraker.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/64x64/apps/safecraker.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/48x48/apps/safecraker.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/symbolic/apps/safecraker-symbolic.svg 2>/dev/null || true

sudo rm -f /usr/share/icons/hicolor/256x256/apps/macchanger.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/128x128/apps/macchanger.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/64x64/apps/macchanger.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/symbolic/apps/macchanger-symbolic.png 2>/dev/null || true
sudo rm -f /usr/share/icons/hicolor/symbolic/apps/macchanger-symbolic.svg 2>/dev/null || true

# Refresh caches
sudo gtk-update-icon-cache /usr/share/icons/hicolor 2>/dev/null || true
sudo update-desktop-database 2>/dev/null || true

echo "[+] Removed ECE icons."
