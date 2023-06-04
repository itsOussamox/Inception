#!/bin/bash
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -e "CREATE USER IF NOT EXISTS'$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "ALTER USER 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"
kill `cat /var/run/mysqld/mysqld.pid`
exec "$@"