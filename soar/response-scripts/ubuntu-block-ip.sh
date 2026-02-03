#!/usr/bin/env bash
set -euo pipefail
ATTACKER_IP="${1:-}"
if [[ -z "$ATTACKER_IP" ]]; then
  echo "Usage: $0 <attacker-ip>"
  exit 1
fi

echo "[+] Blocking $ATTACKER_IP using ufw..."
sudo ufw status || true
sudo ufw deny from "$ATTACKER_IP" to any
sudo ufw reload || true
sudo ufw status
echo "[+] Done."
