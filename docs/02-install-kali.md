
---

# 📄 `docs/02-install-kali.md`

```markdown
# Kali Linux Installation & Attacker Setup

## Purpose
Kali Linux is used exclusively to generate attack traffic for SOC detection and investigation.

---

## VM Network Configuration
- NIC 1: NAT (VMnet8)
- NIC 2: Host-Only (VMnet1)

---

## Verify IP Addressing

```bash
ip -br a
