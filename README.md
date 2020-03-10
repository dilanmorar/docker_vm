# docker vm

In this repo I installed docker on a virtual machine. I know this isn't an efficient way of using docker but I was unable/having problems installing docker on windows. I used this as practice creating images and running containers. I now have got access to a windows 10 pro key so wont be using docker in a virtual machine. Remember if using docker enable hyper-v, if using a virtual machine disable hyper-v.

## docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.

## running dockerfile

start virtual machine:
```
vagrant up
```
enter the virtual machine:
```
vagrant ssh
```
To test that docker is running - `sudo systemctl status docker`

go to directory containing dockerfile:
```
cd /home/ubuntu/environment/app
```
build a docker image:
```
sudo docker build -t app .
```
run a docker image, container:
```
sudo docker run -p 80:80 -p 3000:3000 app
```
