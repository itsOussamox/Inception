#!/bin/bash

# Define variables
MYSQL_USER="obouadel"
MYSQL_ROOT_PASSWORD="rootobouadel"
MYSQL_PASSWORD="obo2001"
MYSQL_DATABASE="obobase"
MYSQL_BASE="mariadb"
# Start the MariaDB server
service mysql start

# Create a new database
# echo "Database cd"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}"

mysql -u root -e "FLUSH PRIVILEGES"
# Create a new administrative user
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' WITH GRANT OPTION"
mysql -u root -e "FLUSH PRIVILEGES"
echo "Database created"
service mysql stop
echo "Database created"
mysqld