#!/bin/bash
set -e

echo "Stopping and removing containers..."
docker compose down --rmi all
echo "Containers removed"

read -p "Delete all config data from /srv? This is irreversible! (y/N): " confirm
if [ "$confirm" = "y" ]; then
    sudo rm -rf /srv/jellyfin /srv/qbittorrent /srv/prowlarr /srv/radarr /srv/sonarr
    echo "Config data removed"
else
    echo "Config data kept"
fi

echo "Done!"
