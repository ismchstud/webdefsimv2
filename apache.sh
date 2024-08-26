#!/bin/bash

# Update package index
echo "Updating package index..."
sudo apt update

# Install Apache
echo "Installing Apache..."
sudo apt install apache2 -y

# Install PHP 8.1 without recommended packages
echo "Installing PHP 8.1..."
sudo apt install --no-install-recommends php8.1 -y

# Start Apache service
echo "Starting Apache service..."
sudo systemctl start apache2

# Enable Apache to start on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable apache2

echo "Apache and PHP 8.1 installation and setup completed successfully!"
