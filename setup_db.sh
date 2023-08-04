#!/bin/bash

# Update and install PostgreSQL
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

# Configure PostgreSQL to listen on all addresses
echo "listen_addresses = '*'" | sudo tee -a /etc/postgresql/$(ls /etc/postgresql)/main/postgresql.conf

# Add a new user and database
sudo -u postgres psql -c "CREATE USER database WITH PASSWORD 'zone2023!';"
sudo -u postgres psql -c "CREATE DATABASE test OWNER database;"

# Allow connections from any IP address (for development purposes)
echo "host    all             all             0.0.0.0/0               md5" | sudo tee -a /etc/postgresql/$(ls /etc/postgresql)/main/pg_hba.conf

# Restart PostgreSQL service
sudo service postgresql restart
