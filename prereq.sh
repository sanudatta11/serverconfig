#!/bin/bash
sudo apt-get update -y
Sudo apt-get upgrade -y
sudo apt-get install apache2 php7.0 php7.0-cli php7.0-curl php7.0-mcrypt php7.0-mysql php7.0 libapache2-mod-php -y
sudo a2enmod rewrite
sudo apt-get install mysql-common php7.0-common php7.0-json php7.0-dev php7.0-cgi openjdk-8-jdk openjdk-8-jdk-headless -y
sudo apt-get install docker.io docker-compose docker-registry apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo nano /etc/apt/sources.list.d/docker.list 
