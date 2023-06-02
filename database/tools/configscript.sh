#!/bin/bash

# Define variables
MYSQL_USER="obouadel"
MYSQL_ROOT_PASSWORD="rootobouadel"
MYSQL_PASSWORD="obo2001"
MYSQL_DATABASE="obobase"
MYSQL_BASE="mariadb"
# Create a new database
service mysql start
# echo "Database cd"
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

# Create a new administrative user
mysql -e "CREATE USER IF NOT EXISTS'${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
echo "Da"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"
echo "ta"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "alter user 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD';"
echo "ba"
mysql -e "FLUSH PRIVILEGES;"
echo "se"
echo $(cat /var/run/mysqld/mysqld.pid)
kill `cat /var/run/mysqld/mysqld.pid`
echo "created"
exec "$@"