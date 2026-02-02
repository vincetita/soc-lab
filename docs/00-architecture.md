# Lab Architecture

## Why NAT + Host-Only
- NAT (192.168.20.0/24): management + internet updates + SOC UI access
- Host-Only (192.168.117.0/24): isolated internal traffic for safe attack simulation and monitoring

## IP Plan (Real Values)
- Security Onion mgmt: 192.168.20.10 (ens160), default via 192.168.20.2
- Kali NAT: 192.168.20.129 (eth0)
- Kali Host-Only: 192.168.117.129 (eth1)
- Ubuntu NAT: 192.168.20.128 (ens33)
- Ubuntu Host-Only: 192.168.117.128 (ens34)

## Verification Commands
### Security Onion
- `sudo so-status`
- `ip -br a`
- `ip route`

### Kali / Ubuntu
- `ip -br a`
- `ip route`
- `ping 192.168.20.10`
