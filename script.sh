#!/bin/bash

# update packages & install curl 
sudo apt-get update -y
sudo apt-get install curl -y

# install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Test Docker installation
curl -fsSL https://get.docker.com -o test-docker.sh
sudo sh test-docker.sh

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Start stacks
git clone https://github.com/medalibettaieb/goat-wolf.git
cd goat-wolf
sudo docker-compose -p user1 up -d 
