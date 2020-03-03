FROM ubuntu:16.04

COPY . /node-sample-app

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install curl -y

RUN apt-get install sudo -y

RUN apt-get install python -y

RUN apt-get install nginx -y

# COPY node-sample-app /home/ubuntu/node-sample-app

RUN apt-get install python-software-properties -y

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN apt-get install nodejs -y

# RUN sudo apt-get install npm -y

RUN npm install pm2 -g

WORKDIR . /node-sample-app

RUN npm install

RUN sudo apt-get install nodejs-legacy -y

RUN node app.js

EXPOSE 80 3000
