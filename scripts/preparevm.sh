#!/bin/bash
cd ~
sudo apt-get update
sudo apt-get install php-curl php-mbstring php-xml
sudo apt-get --with-new-pkgs upgrade
sudo mysql -uroot -p -e "CREATE DATABASE mutillidae /*\!40100 DEFAULT CHARACTER SET utf8 */;"
git clone https://github.com/carstenlucke/gish.git
cd gish
sudo mv /var/www/html /var/www/html-BACKUP
sudo mv var_www_html /var/www/
sudo /etc/init.d/apache2 start
sudo /etc/init.d/mariadb start