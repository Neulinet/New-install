#!/bin/sh

OPENHAB_HOME=/opt/openhab2
DIST_HOME=/opt/dist
ZIP_NAME=openhab-2.0.0.alpha2-runtime.zip 
OPENHAB_USER=pi

sudo service openhab2 stop
sudo rm -rf $OPENHAB_HOME/runtime
sudo rm -rf $OPENHAB_HOME/addons
sudo rm -rf $OPENHAB_HOME/conf
sudo cp -f $DIST_HOME/$ZIP_NAME $OPENHAB_HOME
cd $OPENHAB_HOME
sudo -u openhab unzip -o $ZIP_NAME
sudo service openhab2 start

