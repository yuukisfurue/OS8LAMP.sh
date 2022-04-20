#apache:php:mysqlインストール
dnf remove -y php
dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
rpm --import http://rpms.remirepo.net/RPM-GPG-KEY-remi
dnf module list php
dnf module enable php:remi-8.1
dnf update
dnf -y install httpd-devel
dnf -y install mod_ssl
dnf -y install php php-devel php-mysqlnd php-gd php-pear php-pecl-apc-devel php-pecl-zip php-gd php-zip php-mysqlnd
dnf -y install mysql mysql-server
dnf -y install httpd-devel
systemctl start httpd
systemctl enable httpd
systemctl is-enabled httpd
dnf -y update


#開発ツールなど、基本的なパッケージをインストールしておきます。
dnf -y groupinstall base
dnf -y groupinstall development

#Python３系インストールコマンド
dnf install python3

#Djangoのインストールにはpip3を使用します。
dnf install pip

#Djangoのインストール
pip3 install django

#Djangoのバージョン確認コマンド
python3 -m django --version

#jsの設定です。
dnf install -y nodejs npm
dnf npm install n -g
dnf install npm
dnf n stable
dnf install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc

#java
yum install java-11-openjdk
yum install java-11-openjdk-devel
yum install java-11-openjdk-headless
