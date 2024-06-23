#!/bin/bash

echo "**********************************************************"
echo "Downloading html files from Toothplate"
sudo wget https://www.tooplate.com/download/2113_earth
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Installing Unzip"
sudo apt install unzip
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Unzipping downloaded zipped file"
sudo unzip 2113_earth.zip -d ./
sleep 5
echo -e "\n"

echo "END"
