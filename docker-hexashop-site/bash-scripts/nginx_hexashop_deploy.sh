#!/bin/bash

echo "**********************************************************"
echo " Creating Dockerfile"
touch Dockerfile
ls -la
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Editing Dockerfile"
echo "FROM nginx:alpine" > Dockerfile
echo "COPY ./templatemo_571_hexashop/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building nginx image named hexashop-image"
docker build -t hexashop-image:hexashop . 
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from hexashop-image"
docker run --name hexashop-nginx -d -p 600:80 hexashop-image:hexashop
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker containers running"
docker ps
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "HTML data from index page"
curl localhost:600
echo -e "\n"

echo "**********************************************************"
echo "Confirm docker login"
docker login
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Tag image to repository with hexashop tag"
docker tag hexashop-image:hexashop odennav/nginx:hexashop
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push tagged image to dockerhub"
docker push odennav/nginx:hexashop
sleep 5
echo -e "\n"

echo "END"






