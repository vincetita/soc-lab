#!/usr/bin/env bash
set -euo pipefail

echo "[+] Installing and enabling fail2ban..."
sudo apt update
sudo apt install -y fail2ban

echo "[+] Creating jail.local for SSH..."
sudo tee /etc/fail2ban/jail.local >/dev/null <<'EOF'
[sshd]
enabled = true
port = ssh
backend = systemd
maxretry = 5
findtime = 10m
bantime = 30m
EOF

sudo systemctl enable --now fail2ban
sudo fail2ban-client status
sudo fail2ban-client status sshd || true
echo "[+] Done."
