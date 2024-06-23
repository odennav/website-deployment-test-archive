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
echo "COPY ./templatemo_583_festava_live/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building nginx image named festava-image"
docker build -t festava-image:festava . 
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from festava-image"
docker run --name festava-nginx -d -p 600:80 festava-image:festava
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
echo "Tag image to repository with festava tag"
docker tag festava-image:festava odennav/nginx:festava
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push tagged image to dockerhub"
docker push odennav/nginx:festava
sleep 5
echo -e "\n"

echo "END"






