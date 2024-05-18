#!/bin/bash

# 18 Mei 2024

sudo apt install nodejs -y
IP=$(curl -s ip.me -4)
sudo sed -i -e "s/(your_vm_ip)/$IP/g" ./server.js
kill $(ps aux | grep 'node server.js' | awk '{print $2}' | head -1)
nohup node server.js > server.log 2>&1 &