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
echo "COPY ./2093_flight/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building docker image"
docker build -t flight-image:flight . 
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from  flight-image"
docker run --name flight-nginx -d -p 700:80 flight-image:flight
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "List of containers running"
docker ps
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "HTML data from index page"
curl localhost:700
echo -e "\n"

echo "**********************************************************"
echo "Confirm docker login"
docker login
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Tag image to repository"
docker tag flight-image:flight odennav/nginx:flight
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push image to Dockerhub"
docker push odennav/nginx:flight
sleep 5
echo -e "\n"

echo "END"






