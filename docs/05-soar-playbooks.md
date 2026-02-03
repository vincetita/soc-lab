# SOAR Playbooks (Lab Demonstration)

## Purpose
Demonstrate SOC response thinking using simple, explainable automation.

This lab uses **script-based SOAR concepts** rather than full SOAR platforms.

---

## Playbook 1: Reconnaissance (Nmap / Curl / Gobuster)

### Trigger
- Suricata scan alerts
- Abnormal HTTP enumeration

### Actions
1. Identify attacker IP (e.g. 192.168.20.129)
2. Collect network telemetry (SOC screenshots)
3. Tag incident as reconnaissance
4. Escalate if combined with credential activity

---

## Playbook 2: SSH Brute Force (Hydra)

### Trigger
- Multiple failed SSH logins
- Correlated network activity from Kali

### Automated Actions
- Block attacker IP on Ubuntu
- Enable fail2ban SSH jail
- Preserve auth.log evidence

---

## Example Response Script
```bash
./soar/response-scripts/ubuntu-block-ip.sh 192.168.117.129
