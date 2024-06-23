#!/bin/bash

echo "******************************************"
echo " Stopping woox-nginx container:"
docker stop woox-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting woox-nginx container:"
docker rm woox-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting woox-image tagged woox:"
docker rmi woox-image:woox
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting woox-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:woox
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all woox images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
