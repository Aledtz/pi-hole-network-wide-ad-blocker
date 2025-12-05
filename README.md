# pi-hole-network-wide-ad-blocker
Deployed a fully functional Pi-hole DNS sinkhole on Raspberry Pi Zero W (headless) to provide network-wide ad and tracker blocking with 40%+ query blocking rate using hagezi Pro++ blocklists.

# Pi-hole Network-Wide Ad & Tracker Blocker on Raspberry Pi Zero W

**Completed December 2025**  
A fully functional, production-ready Pi-hole deployment that blocks ads and trackers across my entire home network (phones, laptops, smart TVs, IoT devices) with a **40%+ block rate** using the aggressive hagezi Pro++ blocklist.

## Key Features & Skills Demonstrated
- Headless Raspberry Pi OS Lite installation via Raspberry Pi Imager
- Pre-configured Wi-Fi, SSH, and static LAN IP (`192.168.1.222`) using advanced imager options
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
![Final Dashboard – 40% Blocked](screenshots/10-final-dashboard-40percent.jpg)
![Query Log – Real-Time Blocking](screenshots/09-query-log.jpg)
![Adlists with hagezi Pro++](screenshots/08-adlists-hagezi.jpg)
![Finished Hardware Build](screenshots/12-finished-build.jpg)

Full screenshot gallery in `/screenshots`

## Config Snippets
- [Static IP configuration](config-snippets/dhcpcd.conf-static-ip.txt)
- [Encrypted DNS blocking](config-snippets/pihole-FTL.conf-encrypted-dns.txt)

This project directly demonstrates real-world Linux administration, networking (DNS/DHCP), troubleshooting, and security hardening — perfect prep for IT Support / Systems Administration roles.
