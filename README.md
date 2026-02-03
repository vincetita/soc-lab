# soc-lab
End-to-end SOC lab using Security Onion, Kali, Ubuntu &amp; Windows — detection engineering, attack simulations, Sigma rules, dashboards, and SOAR workflows in VMware.

- Built segmented SIEM lab using Security Onion with realistic management vs monitoring planes

- Demonstrated full detection lifecycle: generate attack → detect → investigate → respond → report

- Produced evidence artifacts: terminal output, SOC alerts, Zeek telemetry, incident report

- Implemented SOAR-style response scripts: firewall block + fail2ban automation

- Mapped activity to MITRE ATT&CK and documented lessons learned

# Security Onion Repo Structure
soc-lab/
├── README.md
├── docs/
│   ├── 00-architecture.md
│   ├── 01-install-security-onion.md
│   ├── 02-install-kali.md
│   ├── 03-install-ubuntu.md
│   ├── 04-siem-workflows.md
│   ├── 05-soar-playbooks.md
│   └── 99-troubleshooting.md
├── attacks/
│   ├── nmap/
│   │   ├── steps.md
│   │   └── evidence.md
│   ├── curl/
│   │   ├── steps.md
│   │   └── evidence.md
│   ├── gobuster/
│   │   ├── steps.md
│   │   └── evidence.md
│   └── hydra/
│       ├── steps.md
│       └── evidence.md
├── detection/
│   ├── hunt-queries/
│   │   ├── zeek-hunt-queries.md
│   │   └── elastic-hunt-queries.md
│   ├── sigma/
│   │   ├── nmap-recon.yml
│   │   ├── ssh-bruteforce.yml
│   │   └── web-enum.yml
│   └── notes.md
├── incident-reports/
│   ├── IR-001-recon-to-cred-attack.md
│   └── incident-template.md
├── soar/
│   ├── playbook-recon.md
│   ├── playbook-ssh-bruteforce.md
│   └── response-scripts/
│       ├── ubuntu-block-ip.sh
│       ├── ubuntu-fail2ban-enable.sh
│       └── kali-attack-runner.sh
└── screenshots/
   ├── setup/
   ├── attacks/
   ├── alerts/
   └── dashboards/

