
# SOC Lab Architecture

## Objective
Design and operate a realistic SOC lab using Security Onion to detect, investigate, and respond to attacks generated from Kali Linux against Ubuntu Server.

This architecture intentionally separates:
- **Management traffic**
- **Attack traffic**
- **Monitoring traffic**

This mirrors real enterprise SOC deployments.

---

## Virtualization Platform
- VMware Workstation
- Two isolated virtual networks:
  - NAT (management & internet)
  - Host-Only (internal monitored traffic)

---

## Network Design (REAL VALUES)

### VMnet8 – NAT (Management Plane)
- Subnet: 192.168.20.0/24
- Gateway: 192.168.20.2
- Purpose:
  - Internet access
  - Security Onion web interface
  - Package updates

### VMnet1 – Host-Only (Monitoring Plane)
- Subnet: 192.168.117.0/24
- Purpose:
  - Isolated attack traffic
  - East–west monitoring
  - Safe lab simulation

---

## Host Roles & IP Addressing

| System | Role | NAT IP | Host-Only IP |
|-----|----|----|----|
| Security Onion | SIEM / SOC | 192.168.20.10 | Sniffing (bond0, no IP) |
| Kali Linux | Attacker | 192.168.20.129 | 192.168.117.129 |
| Ubuntu Server | Victim | 192.168.20.128 | 192.168.117.128 |

---

## Why This Design Works
- NAT allows controlled external access and SOC UI management
- Host-Only ensures attack traffic is fully visible
- Security Onion sensor NIC captures traffic without an IP (best practice)
- Internal attacks do NOT leak to the host or real network

---

## Verification Commands

### Security Onion
```bash
ip -br a
ip route
sudo so-status

