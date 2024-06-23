#!/bin/bash

echo "******************************************"
echo " Stopping earth-nginx container:"
docker stop earth-nginx
sleep 5
echo -e "\n"

echo "******************************************"
echo " Stopping earth-nginx container:"
docker rm earth-nginx
sleep 5
echo -e "\n"

echo "******************************************"
echo "Deleting earth-image tagged earth:"
docker rmi earth-image:earth
sleep 5
echo -e "\n"

echo "******************************************"
echo "Deleting earth-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:earth
sleep 5
echo -e "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e "\n"

echo "******************************************"
echo " Confirm all earth tagged docker images removed:"
docker images
sleep 5
echo -e "\n"

echo "END"
