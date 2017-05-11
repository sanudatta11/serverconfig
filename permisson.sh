#!/bin/bash

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

echo "Granting Server Permissions"
sudo chown -R www-data /var/www/html/
sudo chgrp -R www-data /var/www/html/
sudo chmod -R g+w /var/www/html/

echo "Giving Question Save Permissons"
sudo chmod 0777 /var/www/html/teacher/addcode/questions/
sudo chmod 0777 /var/www/html/teacher/globalcontest/questions/

