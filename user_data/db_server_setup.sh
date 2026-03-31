#!/bin/bash
# Database Server Setup Script
# Installs and configures PostgreSQL

# Update system packages
yum update -y

# Install PostgreSQL
amazon-linux-extras enable postgresql14
yum install -y postgresql postgresql-server

# Initialize the database
postgresql-setup initdb

# Start and enable PostgreSQL
systemctl start postgresql
systemctl enable postgresql

# Configure PostgreSQL to allow password authentication
sed -i 's/ident/md5/g' /var/lib/pgsql/data/pg_hba.conf
sed -i 's/peer/md5/g' /var/lib/pgsql/data/pg_hba.conf

# Restart PostgreSQL to apply changes
systemctl restart postgresql

# Create a database and user for TechCorp
sudo -u postgres psql <<PSQL
CREATE DATABASE techcorp_db;
CREATE USER techcorp_user WITH PASSWORD 'TechCorp2024!';
GRANT ALL PRIVILEGES ON DATABASE techcorp_db TO techcorp_user;
PSQL