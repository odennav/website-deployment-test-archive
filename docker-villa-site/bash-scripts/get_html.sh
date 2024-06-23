#!/bin/bash


iecho "**********************************************************"
echo "Downloading html files from Templatemo"
sudo wget https://www.tooplate.com/download/templatemo_591_villa_agency
sleep 5
echo -e "\n"


echo "**********************************************************"
echo "Installing Unzip"
sudo apt install unzip
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Unzipping downloaded zipped file"
sudo unzip templatemo_591_villa_agency.zip -d ./
sleep 5
echo -e "\n"

echo "END"
