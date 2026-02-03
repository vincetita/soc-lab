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
