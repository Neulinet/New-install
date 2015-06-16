#!/bin/sh

# create openhab2 user
sudo useradd -d /opt/openhab2 -s /bin/false openhab

# setup folder /opt/openhab2
sudo mkdir /opt/openhab2
sudo chown -R openhab.openhab /opt/openhab2

# setup folder /opt/dist (for copy distributives from jenkins)
sudo mkdir /opt/dist
sudo cp install-openhab2.sh /opt/dist
sudo chmod +x /opt/dist/install-openhab2.sh
sudo chown -R pi /opt/dist

# setup service script
sudo cp openhab2 /etc/init.d
sudo chmod +x /etc/init.d/openhab2
sudo update-rc.d openhab2 defaults


