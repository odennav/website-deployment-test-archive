#!/bin/bash

echo "******************************************"
echo " Stopping flight-nginx container:"
docker stop flight-nginx
sleep 5
echo -e "\n"

echo "******************************************"
echo " Stopping flight-nginx container:"
docker rm flight-nginx
sleep 5
echo -e "\n"

echo "******************************************"
echo "Deleting flight-image tagged earth:"
docker rmi flight-image:flight
sleep 5
echo -e "\n"

echo "******************************************"
echo "Deleting flight-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:flight
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
