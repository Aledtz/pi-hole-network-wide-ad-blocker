# Pi-hole Network-Wide Ad & Tracker Blocker on Raspberry Pi Zero W

**Completed December 2025**  
A fully functional, production-ready Pi-hole deployment that blocks ads and trackers across my entire home network (phones, laptops, smart TVs, IoT devices) with a **40%+ block rate** using the aggressive hagezi Pro++ blocklist.

## Key Features & Skills Demonstrated
- Headless Raspberry Pi OS Lite installation via Raspberry Pi Imager
- Pre-configured Wi-Fi, SSH, and static LAN IP (`192.168.1.224`) using advanced imager options
- Permanent static IP configuration via `/etc/dhcpcd.conf`
- Pi-hole v5 automated installation and hardening
- Added hagezi Pro++ blocklist (~550k domains)
- Enabled `block-encrypted-dns=true` to stop DoH/DoT bypasses
- Configured router-level DNS override for true network-wide protection
- Troubleshooting experience with locked ISP routers and smart TV bypasses

## Results
- **440,940+ domains on blocklist**
- **~40% of all DNS queries blocked** (real-world average)
- Clean browsing experience with minimal false positives
- Smart TVs and mobile devices now fully visible and filtered

## Hardware
- Raspberry Pi Zero W (2017 model)
- Official Argon ONE-style 3D-printed case
- 32 GB microSD + USB reader

## Screenshots
### Setup & Installation
![Raspberry Pi Imager Setup](screenshots/raspberry-pi-imager-setup.jpg)  
![Raspberry Pi Imager Username Config](screenshots/raspberry-pi-imager-username-config.jpg)  
![Raspberry Pi Imager Wi-Fi Config](screenshots/raspberry-pi-imager-wifi-config.jpg)  
![Raspberry Pi Imager OS Selection](screenshots/raspberry-pi-imager-os-selection.jpg)  
![Raspberry Pi Imager SSH Auth](screenshots/raspberry-pi-imager-ssh-auth.jpg)  
![Raspberry Pi Imager Write Complete](screenshots/raspberry-pi-imager-write-complete.jpg)  

### Pi-hole Installation
![Pi-hole Installer Welcome](screenshots/pi-hole-installer-welcome.jpg)  
![Pi-hole Upstream DNS Selection](screenshots/pi-hole-upstream-dns.jpg)  
![Pi-hole Enable Logging](screenshots/pi-hole-enable-logging.jpg)  
![Pi-hole Blocklists Selection](screenshots/pi-hole-blocklists-selection.jpg)  
![Pi-hole Static IP Needed Prompt](screenshots/pi-hole-static-ip-needed.jpg)  
![Pi-hole Install Complete](screenshots/pi-hole-install-complete.jpg)  

### Configuration & Hardening
![Static IP Config in dhcpcd.conf (192.168.1.224)](screenshots/static-ip-dhcpcd-conf.jpg)  
![Gravity Update Output](screenshots/gravity-update-output.jpg)  
![Encrypted DNS Blocking Command](screenshots/encrypted-dns-blocking.jpg)  

### Dashboard & Results
![Initial Dashboard](screenshots/initial-dashboard-0percent.jpg)  
![Query Log with Real-Time Blocks](screenshots/query-log-realtime.jpg)  
![Adlists with hagezi Pro++](screenshots/adlists-hagezi.jpg)  
![Final Dashboard – 40% Blocked](screenshots/final-dashboard-40percent.jpg)  
![Recent Queries Log](screenshots/recent-queries.jpg)  

### Hardware & Network
![Router DNS Settings (192.168.1.224)](screenshots/router-dns-settings.jpg)  
![Finished Pi-hole Build in Case](screenshots/finished-build-case.jpg)  

Full screenshot gallery in `/screenshots`

## Config Snippets
- [Static IP configuration – 192.168.1.224](config-snippets/dhcpcd.conf-static-ip.txt)
- [Encrypted DNS blocking](config-snippets/pihole-FTL.conf-encrypted-dns.txt)
- [Full Install Commands](config-snippets/install-commands.sh)

This project directly demonstrates real-world Linux administration, networking (DNS/DHCP), troubleshooting, and security hardening — perfect prep for IT Support / Systems Administration roles.
