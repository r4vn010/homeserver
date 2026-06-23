#!/bin/bash
set -e

echo "USER_HOME=/home/${SUDO_USER:-$USER}" > .env

echo "Creating directories..."
mkdir -p /srv/jellyfin/{config,cache}
mkdir -p /srv/qbittorrent/config
mkdir -p /srv/prowlarr/config
mkdir -p /srv/radarr/config
mkdir -p /srv/sonarr/config
echo "Directories was created"

mkdir -p /home/${SUDO_USER:-$USER}/Jellyfin/{Movies,Series,Music,Books,Photos}
mkdir -p /home/${SUDO_USER:-$USER}/Downloads
echo "Media directories was created"

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /home/${SUDO_USER:-$USER}/Jellyfin
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /home/${SUDO_USER:-$USER}/Downloads
echo "Rights was set up"

echo "Pulling up stack..."
docker compose up -d
echo "Done! Stack was pulled up"
