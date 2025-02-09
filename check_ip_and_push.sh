#!/bin/bash

# Navigate to the repository where you want to log the IP
cd /home/sbartoul/check_ip

public_ip=$(curl -4 -s ifconfig.me)
# Get the public IP address

# Log the IP address with a timestamp
echo "$(date): $public_ip" >> ip_log.txt

# Add the changes to git
git add .

# Commit the changes
git commit -m "Update IP log"

# Push the changes to the remote repository
git push origin main  # Replace 'main' with your branch name if differenti
