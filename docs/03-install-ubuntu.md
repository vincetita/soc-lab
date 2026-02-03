
---

# 📄 `docs/03-install-ubuntu.md`

```markdown
# Ubuntu Server Installation & Victim Setup

## Purpose
Ubuntu Server acts as a monitored victim system providing:
- SSH authentication logs
- Internal (east–west) attack visibility

---

## VM Network Configuration
- NIC 1: NAT (VMnet8)
- NIC 2: Host-Only (VMnet1)

---

## Verify IP Addressing

```bash
ip -br a
