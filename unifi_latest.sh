#!/bin/bash
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg 
sudo apt-mark hold openjdk-11-*
sudo apt-get install openjdk-8-jdk
sudo update-java-alternatives --set /usr/lib/jvm/java-1.8.0-openjdk-amd64
sudo apt-get update && sudo apt-get install unifi -y
sudo service unifi start
echo "Open your browser and go to http://UniFiServer_IP:8443 to access UniFi"
