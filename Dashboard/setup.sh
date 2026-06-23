#!/bin/bash
set -e

echo "USER_HOME=/home/${SUDO_USER:-$USER}" > .env

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} ./config
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} ./images
echo "Rights was set up"

echo "Pulling up container..."
docker compose up -d
echo "Done! Container was pulled up"
