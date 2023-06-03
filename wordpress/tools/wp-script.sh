#!/usr/bin/env bash
echo "Wordpress is installing"
apt install wget -y
apt install php7.3 -y
apt install php7.3-mysql -y
apt install php-fpm -y
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"
if [ ! -f /usr/share/nginx/html/wp-config.php ]; then
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
    sed -i "s/localhost/${MYSQL_BASE}/g" wp-config.php
    wp core install --allow-root --url=$DOMAIN_NAME --title=$MYSQL_DATABASE --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=$MYSQL_MAIL
    wp user create --allow-root $WORDPRESS_USER $WORDPRESS_EMAIL --role=author --user_pass=$WORDPRESS_PASSWORD 
    echo "Wordpress is installed v2"
else
    echo "Wordpress is already installed"
fi
exec "$@"