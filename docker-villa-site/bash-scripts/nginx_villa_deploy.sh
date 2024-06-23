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
echo "COPY ./templatemo_591_villa_agency/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building nginx image named villa-image"
docker build -t villa-image:villa . 
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from villa-image"
docker run --name villa-nginx -d -p 500:80 villa-image:villa
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker containers running"
docker ps
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "HTML data from index page"
curl localhost:500
echo -e "\n"

echo "**********************************************************"
echo "Confirm docker login"
docker login
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Tag image to repository with card tag"
docker tag villa-image:villa odennav/nginx:villa
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push tagged image to dockerhub"
docker push odennav/nginx:villa
sleep 5
echo -e "\n"

echo "END"






