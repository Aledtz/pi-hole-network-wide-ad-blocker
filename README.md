# Pi-hole Network-Wide Ad & Tracker Blocker on Raspberry Pi Zero W

**Completed December 2025**  
Fully functional Pi-hole deployment that blocks ads and trackers across my entire home network (15+ devices including phones, laptops, smart TVs, and IoT) with a sustained **~40% block rate** using the hagezi Pro++ blocklist. Demonstrates headless Linux setup, DNS hardening, and network troubleshooting.

GitHub: https://github.com/Aledtz/pi-hole-network-wide-ad-blocker

## Quick Start Summary
1. Assemble hardware (Pi Zero W + case).
2. Flash OS Lite with Imager (pre-config Wi-Fi/SSH/static IP 192.168.1.224).
3. Install Pi-hole via curl script; select Cloudflare upstream + logging.
4. Harden with hagezi Pro++ blocklist and encrypted-DNS blocking.
5. Override router DNS for network-wide effect.
6. Monitor dashboard for 40%+ blocking.

## Key Features & Skills Demonstrated
- Headless Raspberry Pi OS Lite (64-bit) deployment via Raspberry Pi Imager with pre-configured Wi-Fi, SSH, and static IP (`192.168.1.224`)
- Permanent static IP configuration in `/etc/dhcpcd.conf`
- Pi-hole v5 installation + aggressive blocklist integration (440k+ domains)
- Encrypted-DNS bypass prevention (`block-encrypted-dns=true`)
- Router-level DNS override for true network-wide protection
- Full documentation with 33 screenshots and config snippets

## Results
- **440,940+ domains blocked**
- **~40% of all DNS queries blocked** (real-world average)
- Smart TVs and mobile devices now fully filtered (no DoH/DoT bypass)

## Hardware
- Raspberry Pi Zero W (2017)
- 3D-printed protective case
- 32 GB microSD (PNY Elite)

## Step-by-Step Configuration Guide
Follow this guide to replicate the setup. All 33 screenshots illustrate each phase in detail – fork and build your own!

### Phase 1: Hardware Preparation & Unboxing (Screenshots 01-06)
Gather and assemble components for a compact, reliable build.

![01: Project overview and component list](screenshots/01-pi-hole-start.jpeg) – Starting point: Listing all parts for the Pi-hole build.  
![02: Unboxing Raspberry Pi Zero W](screenshots/02-unboxing-pi-zero.jpg) – Opening the Pi Zero W package to inspect board and connectors.  
![03: MicroSD card and reader setup](screenshots/03-microsd-reader.jpg) – Preparing the 32 GB microSD for OS flashing.  
![04: Case assembly step 1 (base mounting)](screenshots/04-case-base.jpg) – Securing the Pi board into the 3D-printed case base.  
![05: Adding heatsink and headers](screenshots/05-heatsink-headers.jpg) – Installing thermal management for sustained operation.  
![06: Final enclosure closure](screenshots/06-case-complete.jpg) – Sealing the case for dust protection and portability.

### Phase 2: OS Flashing & Headless Configuration (Screenshots 07-12)
Use Raspberry Pi Imager for zero-touch setup (Wi-Fi, SSH, hostname).

![07: Launching Raspberry Pi Imager](screenshots/07-imager-launch.jpg) – Opening the tool and selecting the Pi Zero W device.  
![08: Choosing Raspberry Pi OS Lite (64-bit)](screenshots/08-os-lite-selection.jpg) – Opting for headless version to minimize resource use.  
![09: Advanced options menu](screenshots/09-advanced-options.jpg) – Enabling SSH and setting username/password for remote access.  
![10: Wi-Fi SSID and password config](screenshots/10-wifi-config.jpg) – Pre-configuring network credentials for automatic connection.  
![11: Hostname setup (pihole-local)](screenshots/11-hostname-setup.jpg) – Assigning a custom hostname for easy SSH discovery.  
![12: Writing image to microSD](screenshots/12-write-progress.jpg) – Monitoring the flash process; verify integrity post-write.

### Phase 3: First Boot, SSH Access & System Prep (Screenshots 13-18)
Power on, connect via SSH, and update the base OS.

![13: Inserting microSD and powering on](screenshots/13-first-power-on.jpg) – Booting the Pi for the initial headless startup.  
![14: SSH connection from laptop](screenshots/14-ssh-connect.jpg) – Logging in remotely: `ssh username@pihole-local.local`.  
![15: Running sudo apt update](screenshots/15-apt-update.jpg) – Fetching latest package lists for security and stability.  
![16: sudo apt upgrade execution](screenshots/16-apt-upgrade.jpg) – Applying system updates to patch vulnerabilities.  
![17: Verifying network connectivity](screenshots/17-network-check.jpg) – Confirming IP assignment and ping to router (192.168.1.1).  
![18: Installing prerequisites (curl, etc.)](screenshots/18-prereqs-install.jpg) – Preparing dependencies for Pi-hole installer.

### Phase 4: Pi-hole Installation (Screenshots 19-24)
Run the automated script with custom selections for optimal setup.

![19: Launching Pi-hole installer](screenshots/19-installer-curl.jpg) – Executing `curl -sSL https://install.pi-hole.net | bash`.  
![20: Installer welcome and agreement](screenshots/20-installer-welcome.jpg) – Reviewing terms and starting the guided process.  
![21: Upstream DNS provider choice (Cloudflare)](screenshots/21-upstream-dns.jpg) – Selecting secure, fast recursive DNS.  
![22: Enabling query logging](screenshots/22-enable-logging.jpg) – Activating logs for monitoring and troubleshooting.  
![23: Blocklist selection (StevenBlack)](screenshots/23-blocklists-selection.jpg) – Choosing initial unified blocklist for broad coverage.  
![24: Static IP requirement prompt](screenshots/24-static-ip-prompt.jpg) – Warning to configure persistent IP before proceeding.

### Phase 5: Static IP, Hardening & Blocklist Updates (Screenshots 25-29)
Secure the network config and enhance blocking capabilities.

![25: Editing /etc/dhcpcd.conf](screenshots/25-dhcpcd-edit.jpg) – Adding static IP lines for wlan0 interface (192.168.1.224/24).  
![26: Rebooting to apply static IP](screenshots/26-reboot-static.jpg) – Restarting Pi to lock in the configuration.  
![27: Adding hagezi Pro++ blocklist via UI](screenshots/27-adlists-hagezi.jpg) – Integrating ~550k aggressive domains for max ad/tracker blocking.  
![28: Running pihole -g gravity update](screenshots/28-gravity-update.jpg) – Compiling and downloading the full blocklist database.  
![29: Enabling encrypted-DNS blocking](screenshots/29-encrypted-dns.jpg) – Appending `block-encrypted-dns=true` to pihole-FTL.conf and restarting service.

### Phase 6: Network Deployment, Testing & Results (Screenshots 30-33)
Override router DNS, test across devices, and review metrics.

![30: Router admin panel access](screenshots/30-router-login.jpg) – Logging into 192.168.1.1 to modify DHCP settings.  
![31: Setting Pi-hole as primary DNS](screenshots/31-router-dns-override.jpg) – Updating primary/secondary DNS to 192.168.1.224 and 1.1.1.1.  
![32: Flushing client DNS caches](screenshots/32-ipconfig-flush.jpg) – Running `ipconfig /flushdns` on Windows devices for immediate effect.  
![33: Final dashboard – 40% blocked queries](screenshots/33-dashboard-final.jpg) – Live metrics showing 440k+ domains active and real-time blocking rate.

**Pro Tip**: For locked routers, enable Pi-hole's DHCP server (`pihole enable dhcp`). Monitor via http://192.168.1.224/admin and whitelist false positives as needed.

Browse the complete [screenshots folder](screenshots/) with all 33 images for extras like query logs and error troubleshooting.

## Config Snippets
- [Static IP – 192.168.1.224](config-snippets/dhcpcd.conf-static-ip.txt)
- [Encrypted DNS blocking](config-snippets/pihole-FTL.conf-encrypted-dns.txt)
- [Full install & hardening script](config-snippets/install-commands.sh)

This project demonstrates hands-on Linux administration, DNS/networking, troubleshooting, and documentation — skills directly applicable to IT Support and Systems Administration roles.

Ready to deploy your own? Fork this repo and follow the steps!
