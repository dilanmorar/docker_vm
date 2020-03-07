# docker vm

installing docker on a virtual machine


testing docker running - sudo systemctl status docker

# running dockerfile
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
run a docker image:
```
sudo docker run -p 80:80 -p 3000:3000 app
```
