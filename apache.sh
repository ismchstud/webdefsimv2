#!/bin/bash

# Update package index
echo "Updating package index..."
sudo apt update

# Install Apache
echo "Installing Apache..."
sudo apt install apache2 -y

# Start Apache service
echo "Starting Apache service..."
sudo systemctl start apache2

# Enable Apache to start on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable apache2

echo "Apache installation and setup completed successfully!"
