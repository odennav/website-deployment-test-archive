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
echo "COPY ./2113_earth/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building docker image"
docker build -t earth-image:earth . 
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from earth-image"
docker run --name earth-nginx -d -p 900:80 earth-image:earth
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "List of docker containers running"
docker ps
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "HTML data from index page"
curl localhost:900
echo -e "\n"

echo "**********************************************************"
echo "Confirm docker login"
docker login
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Tag image to repository"
docker tag earth-image:earth odennav/nginx:earth
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push image to Dockerhub"
docker push odennav/nginx:earth
sleep 5
echo -e "\n"

echo "END"






