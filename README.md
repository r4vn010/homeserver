# Homelab 
Personal self-hosted home server setup with automated media management and secure remote access.
## Stack
### HomeMedia
- **Jellyfin** - Media server for movies, series etc.
- **qBittorrent** - Torrent client with web UI
- **Prowlarr** - Indexer manager for Radarr & Sonarr
- **Radarr** - Automated movie downloads
- **Sonarr** - Automated series downloads
- **FlareSolverr** - Cloudflare bypass for indexers
### Dashboard
- **Homepage** - Dashboard for all services
### Monitoring
- **Uptime Kuma** - Service uptime monitoring
- **WatchTower** - Checking for container updates
## Requirements
- Ubuntu 24.04+
- Docker + Docker Compose
- Git
## Installation
Clone repository:
```
git clone https://github.com/r4vn010/homeserver.git
cd homeserver
```
Run setup:
```
sudo ./setup.sh
```
## Services
| Service      | Port |
| ------------ | ---- |
| Jellyfin     | 8096 |
| qBittorrent  | 8080 |
| Prowlarr     | 9696 |
| Radarr       | 7878 |
| Sonarr       | 8989 |
| FlareSolverr | 8191 |
| Uptime Kuma  | 3001 |
| Homepage     | 3000 |
## Notes
- After setup, configure Prowlarr indexers and connect to Radarr/Sonarr manually via web UI
- qBittorrent default credentials are in `docker logs qbittorrent`
- Media files stored in `~/Jellyfin/`, downloads in `~/Downloads/`
- FlareSolverr must be added as proxy in Prowlarr Settings → Indexer Proxies
- Watchtower can send Telegram notifications when new container images are available

---
Author: r4vn010
