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
echo "COPY ./templatemo_580_woox_travel/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building nginx image named woox-image"
docker build -t woox-image:woox . 
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from woox-image"
docker run --name woox-nginx -d -p 600:80 woox-image:woox
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
echo "Tag image to repository with woox tag"
docker tag woox-image:woox odennav/nginx:woox
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push tagged image to dockerhub"
docker push odennav/nginx:woox
sleep 5
echo -e "\n"

echo "END"






