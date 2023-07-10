#!/bin/bash

# Define the new hostname
new_hostname="wpserver1"

# Update /etc/hostname
echo "$new_hostname" | sudo tee /etc/hostname

# Update /etc/hosts
sudo sed -i "s/^127.0.0.1.*/127.0.0.1\tlocalhost localhost.localdomain $new_hostname/" /etc/hosts

# Update the current hostname
sudo hostnamectl set-hostname "$new_hostname"

# Reboot the server for the changes to take effect
sudo reboot
