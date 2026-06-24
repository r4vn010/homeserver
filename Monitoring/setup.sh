#!/bin/bash
set -e

echo "Creating directories..."
sudo mkdir -p /srv/uptime-kuma
echo "Directories was created"

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv/uptime-kuma
echo "Rights was set up"

echo "Pulling up container..."
docker compose up -d
echo "Done! Container was pulled up"
