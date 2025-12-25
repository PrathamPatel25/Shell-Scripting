#!/bin/bash

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

echo "====================================="
echo " DevOps Tools Auto Installation Script"
echo "====================================="

# Update package list
echo "Updating system packages..."
apt update -y

# Function to install a package if not installed
install_if_missing() {
    if command -v $1 &>/dev/null; then
        echo "$1 is already installed."
    else
        echo "Installing $1..."
        apt install -y $2
    fi
}

# Install Git
install_if_missing git git

# Install Python3
install_if_missing python3 python3

# Install Docker
if command -v docker &>/dev/null; then
    echo "Docker is already installed."
else
    echo "Installing Docker..."
    apt install -y docker.io
    systemctl start docker
    systemctl enable docker
    echo "Docker installed and started."
fi

echo "====================================="
echo "Installation Completed Successfully"
echo "====================================="

# Display versions
echo "Installed Versions:"
git --version
python3 --version
docker --version
