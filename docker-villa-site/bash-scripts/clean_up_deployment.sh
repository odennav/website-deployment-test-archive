#!/bin/bash

echo "******************************************"
echo " Stopping villa-nginx container:"
docker stop villa-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting villa-nginx container:"
docker rm villa-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting villa-image tagged card:"
docker rmi villa-image:villa
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting card-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:villa
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all card images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
