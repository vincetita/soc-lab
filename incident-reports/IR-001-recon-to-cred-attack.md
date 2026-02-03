# IR-001: Recon → Web Enumeration → SSH Brute Force (Lab)

## Summary
Multi-stage attack simulation from Kali to Security Onion and Ubuntu. Validated detections using Security Onion (Suricata + Zeek + Elastic) and Ubuntu auth logs.

## Systems
- Attacker (Kali): 192.168.20.129 / 192.168.117.129
- SIEM (Security Onion): 192.168.20.10
- Victim (Ubuntu): 192.168.117.128

## Timeline
1) Recon scan (nmap) against 192.168.20.10
2) Web probes (curl) against 192.168.20.10
3) Web enumeration (gobuster) against 192.168.20.10
4) SSH brute force (hydra) against 192.168.117.128

## Detection & Evidence
- SOC Alerts: scan/enumeration/bruteforce indicators
- Zeek logs: conn/http/tls/ssh telemetry
- Ubuntu logs: /var/log/auth.log shows repeated failures

## MITRE ATT&CK
- T1046 Network Service Discovery
- T1595 Active Scanning
- T1110 Brute Force

## Response (SOAR)
- Blocked attacker IP on Ubuntu using UFW
- Enabled fail2ban SSH jail
- Verified no successful compromise (lab narrative)

## Lessons Learned
- Correlation across Suricata + Zeek + host logs is key
- East-west visibility (Host-Only network) is critical
# IR-001: Recon → Web Enumeration → SSH Brute Force (Lab)

## Summary
Multi-stage attack simulation from Kali to Security Onion and Ubuntu. Validated detections using Security Onion (Suricata + Zeek + Elastic) and Ubuntu auth logs.

## Systems
- Attacker (Kali): 192.168.20.129 / 192.168.117.129
- SIEM (Security Onion): 192.168.20.10
- Victim (Ubuntu): 192.168.117.128

## Timeline
1) Recon scan (nmap) against 192.168.20.10
2) Web probes (curl) against 192.168.20.10
3) Web enumeration (gobuster) against 192.168.20.10
4) SSH brute force (hydra) against 192.168.117.128

## Detection & Evidence
- SOC Alerts: scan/enumeration/bruteforce indicators
- Zeek logs: conn/http/tls/ssh telemetry
- Ubuntu logs: /var/log/auth.log shows repeated failures

## MITRE ATT&CK
- T1046 Network Service Discovery
- T1595 Active Scanning
- T1110 Brute Force

## Response (SOAR)
- Blocked attacker IP on Ubuntu using UFW
- Enabled fail2ban SSH jail
- Verified no successful compromise (lab narrative)

## Lessons Learned
- Correlation across Suricata + Zeek + host logs is key
- East-west visibility (Host-Only network) is critical
