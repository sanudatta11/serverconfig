#!/bin/bash
echo "Updating your system"
sudo apt-get update -y
echo "Upgrading your System"
sudo apt-get upgrade -y
echo "Installing required server Packages"
sudo apt-get install apache2 php7.0 php7.0-cli php7.0-curl php7.0-mcrypt php7.0-mysql php7.0 libapache2-mod-php -y
sudo a2enmod rewrite
sudo apt-get install mysql-common php7.0-common php7.0-json php7.0-dev php7.0-cgi openjdk-8-jdk openjdk-8-jdk-headless -y

echo "Installing Docker Dependencies"
sudo apt-get install docker.io docker-compose docker-registry apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list 
apt-cache policy docker-engine
echo "Adding Docker user groups"
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart  sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo gpasswd -a www-data docker
sudo service docker restart  sudo groupadd docker
sudo gpasswd -a www-data docker
sudo service docker restart

echo"Pulling Ubuntu Image for Docker"
sudo  docker pull ubuntu

echo "Pulling Initial Dockerfile"
wget https://raw.githubusercontent.com/sanudatta11/serverconfig/master/Dockerfile

echo "Making Docker Images"
sudo docker build -t testdock .
sudo service docker restart

echo "Granting Image Permissions"
sudo chown -R www-data:www-data /var/www
sudo chmod go-rwx /var/www
sudo chmod go+x /var/www
sudo chgrp -R www-data /var/www

sudo chmod -R go-rwx /var/www
sudo chmod -R g+rx /var/www
sudo chmod -R g+rwx /var/www
#Now run this
sudo chmod 0777 /var/www/html
sudo chmod 0777 /var/www/

echo "Installing Evasive modules"
sudo apt-get install libapache2-mod-evasive -y
sudo apt-get install libapache2-mod-xsendfile -y
sudo apt-get install libapache2-mod-log-sq -y

sudo apt-get -y install libapache2-mod-qos
sudo apt-get -y install libapache2-mod-spamhaus
sudo touch /etc/spamhaus.wl
sudo a2enmod rewrite
echo "Done Installing and Instance is confugured"
echo "Reboot your Server for final setup to complete"

