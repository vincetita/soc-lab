# SIEM Investigation Workflow (Security Onion)

## Triage → Hunt → Validate → Report

### 1) Triage (SOC UI)
- Open Alerts
- Filter by source IP:
  - Kali NAT: 192.168.20.129
  - Kali Host-Only: 192.168.117.129
- Identify: scan / web-enum / brute-force indicators

### 2) Hunt
Pivot into Network/Hunt:
- Filter: source.ip == attacker IP
- Review: destination.ip, destination.port, uri, user_agent, tls fields

### 3) Validate with Evidence
- Match timestamps with Kali terminal output
- Confirm victim logs (Ubuntu auth.log for SSH brute force)
- Optional: export alert JSON + capture screenshots

### 4) Report
- Map to MITRE
- Document: What happened, how detected, evidence, response, lessons learned
