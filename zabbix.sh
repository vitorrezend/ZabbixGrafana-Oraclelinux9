#!/bin/bash

echo "excludepkgs=zabbix*" >> /etc/yum.repos.d/oracle-epel-ol9.repo

rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/9/x86_64/zabbix-release-6.0-4.el9.noarch.rpm
dnf clean all

#instalando tudo que precisa
dnf install zabbix-server-mysql zabbix-web-mysql zabbix-nginx-conf zabbix-sql-scripts zabbix-selinux-policy zabbix-agent

#alterar o campo DBPassword em: (depois do mysql)
#/etc/zabbix/zabbix_server.conf
#DBPassword=password

#Alterar a configuração do /etc/nginx/conf.d/zabbix.conf
#descomentar as linhas 1 e 2
