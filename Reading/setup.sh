#!/bin/bash
set -e

read -p "Enter your Nextcloud username: " NC_USER
BOOKS_PATH=/home/${SUDO_USER:-$USER}/Nextcloud/${NC_USER}/files/Books

echo "USER_HOME=/home/${SUDO_USER:-$USER}" > .env
echo "NC_USER=${NC_USER}" >> .env
echo "BOOKS_PATH=${BOOKS_PATH}" >> .env

echo "Creating directories..."
mkdir -p /srv/kavita
mkdir -p ${BOOKS_PATH} 
echo "Directories were created"

echo "Setting up rights..."
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} /srv/kavita
sudo chown -R ${SUDO_USER:-$USER}:${SUDO_USER:-$USER} ${BOOKS_PATH} 
echo "Rights were set up"

echo "Pulling up container..."
docker compose up -d
echo "Done! Container was pulled up"
