# SOAR Playbook: Reconnaissance (Nmap/curl/gobuster)

## Trigger
- Suricata scan alerts OR
- Abnormal HTTP enumeration pattern

## Inputs
- Attacker IP (example): 192.168.20.129
- Target: 192.168.20.10

## Automated Actions (Demo)
1) Enrich IP (internal lab tag)
2) Collect last 200 network events (SOC export / screenshot)
3) Containment (optional in lab): block attacker IP on Ubuntu victim if it targets Ubuntu

## Manual Analyst Steps
- Confirm attack type (scan vs enumeration)
- Validate with Zeek logs (conn/http/tls)
- Confirm scope (single target vs multiple)

## Output
- Incident ticket created
- Evidence saved in screenshots/
- Report updated in incident-reports/
