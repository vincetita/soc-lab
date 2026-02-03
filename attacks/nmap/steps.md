# Nmap Recon Demo

## Goal
Generate reconnaissance traffic and validate detection in Security Onion.

## Commands (Kali → Security Onion)
```bash
sudo nmap -sS -p 22,80,443,9200 192.168.20.10
sudo nmap -sV -O 192.168.20.10

