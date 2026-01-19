"""
Run:
sudo bash install_ece_master_icons.sh

"""
#!/bin/bash
set -e

ECE_ROOT="/opt/ECE"
ICON_DIR="$ECE_ROOT/icons"

echo "[*] Installing ECE master icon pack"

sudo mkdir -p "$ICON_DIR"

# ---- SafeCraker ----
sudo install -m 0644 safecraker_128x128.png "$ICON_DIR/safecraker.png" 2>/dev/null || true
sudo install -m 0644 safecraker_256x256.png "$ICON_DIR/safecraker_256x256.png" 2>/dev/null || true

sudo install -Dm644 safecraker_256x256.png /usr/share/icons/hicolor/256x256/apps/safecraker.png 2>/dev/null || true
sudo install -Dm644 safecraker_128x128.png /usr/share/icons/hicolor/128x128/apps/safecraker.png 2>/dev/null || true
sudo install -Dm644 safecraker_96x96.png  /usr/share/icons/hicolor/96x96/apps/safecraker.png 2>/dev/null || true
sudo install -Dm644 safecraker_64x64.png  /usr/share/icons/hicolor/64x64/apps/safecraker.png 2>/dev/null || true
sudo install -Dm644 safecraker_48x48.png  /usr/share/icons/hicolor/48x48/apps/safecraker.png 2>/dev/null || true
sudo install -Dm644 safecraker-symbolic.svg /usr/share/icons/hicolor/symbolic/apps/safecraker-symbolic.svg 2>/dev/null || true

# ---- MacChanger ----
sudo install -m 0644 macchanger_128x128.png "$ICON_DIR/macchanger.png" 2>/dev/null || true
sudo install -m 0644 macchanger_256x256.png "$ICON_DIR/macchanger_256x256.png" 2>/dev/null || true

sudo install -Dm644 macchanger_256x256.png /usr/share/icons/hicolor/256x256/apps/macchanger.png 2>/dev/null || true
sudo install -Dm644 macchanger_128x128.png /usr/share/icons/hicolor/128x128/apps/macchanger.png 2>/dev/null || true
sudo install -Dm644 macchanger_64x64.png  /usr/share/icons/hicolor/64x64/apps/macchanger.png 2>/dev/null || true
sudo install -Dm644 macchanger_symbolic.png /usr/share/icons/hicolor/symbolic/apps/macchanger-symbolic.png 2>/dev/null || true
sudo install -Dm644 macchanger-symbolic.svg /usr/share/icons/hicolor/symbolic/apps/macchanger-symbolic.svg 2>/dev/null || true

# Refresh caches
sudo gtk-update-icon-cache /usr/share/icons/hicolor 2>/dev/null || true
sudo update-desktop-database 2>/dev/null || true

echo "[+] Installed. Use in .desktop:"
echo "    Icon=safecraker"
echo "    Icon=macchanger"
