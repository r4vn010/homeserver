#!/bin/bash
set -e

echo "USER_HOME=/home/${SUDO_USER:-$USER}" > .env

read -sp "Enter PostgreSQL password: " POSTGRES_PASSWORD
echo "POSTGRES_PASSWORD=${POSTGRES_PASSWORD}" >> .env

echo "Creating directories..."
mkdir -p /srv/nextcloud/db/
mkdir -p /srv/nextcloud/config/
mkdir -p /home/${SUDO_USER:-$USER}/Nextcloud/
echo "Directories was created"

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv/nextcloud/db
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv/nextcloud/config
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /home/${SUDO_USER:-$USER}/Nextcloud
echo "Rights was set up"

echo "Pulling up containers..."
docker compose up -d
echo "Done!"
