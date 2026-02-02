# SOAR Playbook: SSH Brute Force (Hydra)

## Trigger
- Multiple failed SSH authentication attempts on Ubuntu (auth.log)
- Correlated network telemetry from Kali (192.168.117.129)

## Automated Response (Lab-safe)
1) Block attacker IP on Ubuntu firewall
2) Enable fail2ban + SSH jail (optional)
3) Collect logs and store evidence

## Analyst Validation
- Confirm no successful login occurred
- If success: rotate credentials + isolate host (lab narrative)
