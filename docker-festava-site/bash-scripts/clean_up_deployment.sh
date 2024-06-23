#!/bin/bash

echo "******************************************"
echo " Stopping festava-nginx container:"
docker stop festava-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting festava-nginx container:"
docker rm festava-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting festava-image tagged festava:"
docker rmi festava-image:festava
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting festava-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:festava
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all festava images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
