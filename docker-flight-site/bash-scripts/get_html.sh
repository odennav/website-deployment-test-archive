#!/bin/bash

echo "**********************************************************"
echo "Downloading html files from Toothplate"
sudo wget https://www.tooplate.com/download/2093_flight
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Installing Unzip"
sudo apt install unzip
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Unzipping downloaded zipped file"
sudo unzip 2093_flight.zip -d ./
sleep 5
echo -e "\n"

echo "END"
