#!/bin/bash

firewall-cmd --zone=public --permanent --add-port=443/tcp
firewall-cmd --zone=public --permanent --add-port=80/tcp
firewall-cmd --reload

dnf install git -y

#chave conexão ppk
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCVAWaTAeLrFG8/u31SZVMdG2D/1A4Sdaur4a6mQz0iuAaI1paA7HjCgVui5J2h3/xw1gh6hg9B4X7kCbkcPix6p7304W4mJctOMtGMYb6LjVt+d8WOa5AW8USXtVsuo487Yp5OQRAZ5TBVf1Yt7AbmF5ZOs9bS0AC+OGghH+cO5oOfV0S9IsLOKXMEUQiJOf/AFm9UrBhv7N6/EIgzP+cKJsxIWTaRzerRBcjq3ONdgV0RnQA0I8FcAG6aeH/O2ZWiYVhu6utIujLZAoVdKHsL4PonrwluY2G5g/NFcRFJx36QM7SgElMOqrLeZxu/e+I2FF7mqwFDdL7cdFn6ShS9 rsa-key-20230214-vagrant >> /home/vagrant/.ssh/authorized_keys
#chave para usar no git
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZVn4/Rjnse4XWFNPjx09ErEvQ0xKiuDG48NLzmjPFS77a19TNDdH/zrec98e35vlVf5CwtRqdJptEjtwwlLSyG+Dsk/RJCP7d91T3LwrpHuD59fzP+IgHR6/vOfYvQusj9Zb0o1Yu2be/12/We6CyJCbkSwhLt9+Con/5Wmrkm/2af72lkfWtX3ekxmChVbqjzBmDNB3+QsKBcwJolKywdajtKwjaT0eXXtpfUXlGuYQU/E+p3cq+rWwc1p4Ul58ASV9k2xnvAUcZXuylWulfF8B2y2X1x9P1wxXktfGhhK9hM8eKyrAMWYQx7A1To9Zo7kZhKeCJsLurS7F+QK2PD8/fUWMrJMo6AglkmUPXzMtP5ZpbIpEUGQQbmbqv8DtP0Nsx8+DEMBKgJ2+ahBOu+uLU7lDU1+IKvE68QAtFveUjtosHzCn0bj2NOX4gYYqEx/C1/Z6qqwd5eZcTqgABCb3TSxwiqYJTygzFkYjy8bKEyA15RG2RWWO7+eCVnCU= vitor.silva@LAPTOP-9JVMRMM8 >> /home/vagrant/.ssh/authorized_keys


touch /home/vagrant/.bash_aliases
echo "alias ips='ip -c -br a'" > /home/vagrant/.bash_aliases
echo "set number" > /home/vagrant/.vimrc
echo "set number" > /root/.vimrc

chown -R vagrant:vagrant /home/vagrant
source /home/vagrant/.bash_aliases
