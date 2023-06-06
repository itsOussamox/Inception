#!/bin/bash
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -e "CREATE USER IF NOT EXISTS'$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $MYSQL_ROOT_PASSWORD
# USE obobase
# SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = DATABASE();
kill `cat /var/run/mysqld/mysqld.pid`
exec "$@"