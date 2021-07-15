#!/bin/bash

sudo yum update -yum
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "<h1> Welcome to the Hell! Infra created terrafrom in eu-central-1<h1>" > /var/www/html/index.html