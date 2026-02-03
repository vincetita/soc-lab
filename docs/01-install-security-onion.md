
---

# 📄 `docs/01-install-security-onion.md

```markdown
# Security Onion Installation (Server Mode)

## VM Specifications
- RAM: 16 GB
- CPU: 4 vCPU
- Disk: 200 GB
- NIC 1: NAT (VMnet8)
- NIC 2: Host-Only (VMnet1)

---

## Installation Notes
- Installed Security Onion 2.x using ISO
- Mode: Standalone / Evaluation
- DHCP used for management NIC
- No IP manually assigned to sensor NIC

---

## Network Interfaces (Expected)

```bash
ip -br a
