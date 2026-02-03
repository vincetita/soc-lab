# Zeek Hunt Queries (Security Onion SOC)

This document contains practical Zeek-based hunt ideas used to investigate reconnaissance, web enumeration, and SSH brute-force activity generated in this lab.

---

## 1. Identify Reconnaissance Scans (Nmap)

### Objective
Detect TCP SYN scanning behavior from Kali Linux.

### Indicators
- High number of short-lived TCP connections
- Multiple destination ports
- Single source IP

### Hunt Approach
In SOC UI → Hunt → Network:

Filter:

source.ip == 192.168.20.129


Review fields:
- destination.port
- network.transport
- event.duration

Zeek Logs:
- `conn.log`
- `notice.log`

MITRE:
- T1046 – Network Service Discovery

---

## 2. Detect Web Enumeration (curl / gobuster)

### Objective
Identify suspicious HTTP enumeration activity.

### Indicators
- Sequential URI access
- Repeated 404 / 403 responses
- Non-browser user-agents

### Hunt Filters

source.ip == 192.168.20.129 AND network.protocol == "http"


Review Zeek fields:
- http.method
- url.path
- http.status_code
- user_agent

Zeek Logs:
- `http.log`

MITRE:
- T1595 – Active Scanning

---

## 3. TLS / HTTPS Inspection (curl -k)

### Objective
Validate TLS metadata collection.

### Hunt Filters

source.ip == 192.168.20.129 AND network.protocol == "tls"


Review:
- tls.version
- tls.server_name
- tls.certificate.subject

Zeek Logs:
- `ssl.log`
- `tls.log`

---

## 4. SSH Brute Force Detection (Hydra)

### Objective
Detect repeated SSH authentication failures.

### Indicators
- Multiple SSH connections
- Repeated failures
- Same source IP

### Hunt Filters

destination.ip == 192.168.117.128 AND network.protocol == "ssh"


Review:
- ssh.auth_success
- event.outcome
- source.ip

Zeek Logs:
- `ssh.log`
- `conn.log`

MITRE:
- T1110 – Brute Force

---

## 5. East–West Traffic Validation (Host-Only)

### Objective
Ensure internal lateral traffic is monitored.

### Hunt Filters

source.ip == 192.168.117.129


**Expected:**
- Internal-only traffic
- No NAT gateway involvement

**This validates Host-Only monitoring is working correctly.**
