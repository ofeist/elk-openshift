#!/bin/bash

# Replace the following variables with your Red Hat account username and password
YOUR_USERNAME="ofeist"
YOUR_PASSWORD="your_password"

# Register your system with your Red Hat account credentials
sudo subscription-manager register --username "$YOUR_USERNAME" --password "$YOUR_PASSWORD"

# Attach a subscription to your system
sudo subscription-manager attach --auto

# Enable the required repositories for RHEL 7
# For RHEL 8, replace 'rhel-7' with 'rhel-8' in the following command
sudo subscription-manager repos --enable=rhel-7-server-rpms --enable=rhel-7-server-extras-rpms --enable=rhel-7-server-optional-rpms

# Update your system packages
sudo yum update -y

