#!/bin/bash

dnf update ; dnf install mysql mysql-server -y
rpm -qi mysql
systemctl enable --now mysqld ; systemctl status mysqld
#mysql_secure_installation
#mysql -u root -p