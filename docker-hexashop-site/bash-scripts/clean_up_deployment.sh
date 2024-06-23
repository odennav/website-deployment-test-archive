#!/bin/bash

echo "******************************************"
echo " Stopping hexashop-nginx container:"
docker stop hexashop-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting hexashop-nginx container:"
docker rm hexashop-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting hexashop-image tagged hexashop:"
docker rmi hexashop-image:hexashop
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting hexashop-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:hexashop
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all hexashop images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
