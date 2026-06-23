#!/bin/bash
set -e

echo "Stopping and removing containers..."
docker compose down --rmi all
echo "Containers removed"

echo "Done!"
