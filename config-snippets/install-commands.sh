#!/bin/bash
# Full Pi-hole install + hardening commands used in this project

# 1. Install Pi-hole
curl -sSL https://install.pi-hole.net | bash

# 2. Add hagezi Pro++ blocklist via web UI or:
# pihole allowlist "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/pro.plus.txt" "hagezi Pro++"

# 3. Update blocklists
pihole -g

# 4. Block encrypted DNS bypasses
echo "block-encrypted-dns=true" | sudo tee -a /etc/pihole/pihole-FTL.conf
sudo systemctl restart pihole-FTL