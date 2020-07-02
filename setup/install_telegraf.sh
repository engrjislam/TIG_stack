#!/bin/sh

# ref: https://docs.influxdata.com/telegraf/v1.12/introduction/installation/

sudo apt-get update -y 
sudo apt-get install apt-transport-https -y

# add source
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/os-release
echo "deb https://repos.influxdata.com/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

# install and start
sudo apt-get update -y
sudo apt-get install telegraf -y
sudo service telegraf start

#sudo systemctl start telegraf
#sudo systemctl enable telegraf
