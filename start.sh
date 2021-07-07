#!/bin/bash
echo "Upgrading permission of repository..."
#Sets the permission to the repository, so apache can access it
chown -R 33:33 ./mantis
echo "Done!"
echo "Starting Mantis service..."
#Launches docker in detached mode
docker-compose up -d
