#!/usr/bin/env bash
echo "Wordpress is installing"
MYSQL_USER="obouadel"
MYSQL_ROOT_PASSWORD="rootobouadel"
MYSQL_PASSWORD="obo2001"
MYSQL_DATABASE="obobase"
MYSQL_BASE="mariadb"
apt install wget -y
apt install php7.3 -y
apt install php7.3-mysql -y
apt install php-fpm -y
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"
mv wp-cli.phar /usr/local/bin/wp
wp cli update
mkdir -p /var/www/html/
cd /var/www/html
mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;
wp core download --allow-root
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/${MYSQL_DATABASE}/g" wp-config.php
sed -i "s/username_here/${MYSQL_USER}/g" wp-config.php
sed -i "s/password_here/${MYSQL_PASSWORD}/g" wp-config.php
sed -i "s/localhost/${MYe/g" wp-config.php
wp core install --allow-root --url=192.168.1.10 --title=obobase --admin_user=obouadel --admin_password=obo2001
echo "Wordpress is installed"
exec "$@"