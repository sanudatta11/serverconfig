#!/bin/bash
sudo apt-get update -y
Sudo apt-get upgrade -y
sudo apt-get install apache2 php7.0 php7.0-cli php7.0-curl php7.0-mcrypt php7.0-mysql php7.0 libapache2-mod-php -y
sudo a2enmod rewrite
sudo apt-get install mysql-common php7.0-common php7.0-json php7.0-dev php7.0-cgi openjdk-8-jdk openjdk-8-jdk-headless -y
sudo apt-get install docker.io docker-compose docker-registry apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list 
apt-cache policy docker-engine
sudo docker run hello-world
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart  sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo gpasswd -a www-data docker
sudo service docker restart  sudo groupadd docker
sudo gpasswd -a www-data docker
sudo service docker restart
sudo chown -R www-data /var/www/html/
sudo chgrp -R www-data /var/www/html/
sudo chmod -R g+w /var/www/html/
sudo  docker pull ubuntu
cd /
wget https://raw.githubusercontent.com/sanudatta11/serverconfig/master/Dockerfile
sudo docker build -t testdock .
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

sudo apt-get install libapache2-mod-evasive
sudo apt-get install libapache2-mod-xsendfile
sudo apt-get install libapache2-mod-log-sq

sudo apt-get -y install libapache2-mod-qos
sudo apt-get -y install libapache2-mod-spamhaus
sudo touch /etc/spamhaus.wl
sudo chmod 0777 /var/www/html/addcode/questions/
sudo chmod 0777 /var/www/html/globalcontest/questions/
sudo a2enmod rewrite

