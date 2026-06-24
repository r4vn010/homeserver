#!/bin/bash
set -e

echo "Creating directories..."
touch ./.env
sudo mkdir -p /srv/uptime-kuma
echo "Directories was created"

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv/uptime-kuma
echo "Rights was set up"

read -p "Setup Telegram notifications? (y/N): " setup_telegram
if [ "$setup_telegram" = "y" ]; then
    ./watchtower-notifications.sh
fi

echo "Pulling up container..."
docker compose up -d
echo "Done! Container was pulled up"
