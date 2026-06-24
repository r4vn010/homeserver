#!/bin/bash
set -e

echo "Setting up HomeMedia..."
cd HomeMedia && sudo ./setup.sh
cd ..

echo "Setting up Dashboard..."
cd Dashboard && sudo ./setup.sh
cd ..

echo "Setting up Monitoring..."
cd Monitoring && sudo ./setup.sh
cd ..

echo "Setting up Nextcloud..."
cd Nextcloud && sudo ./setup.sh
cd ..

echo "All done!"
