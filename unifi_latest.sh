#!/bin/bash
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https
echo "deb https://www.ui.com/downloads/unifi/debian stable ubiquiti" | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
