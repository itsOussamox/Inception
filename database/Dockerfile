FROM debian:buster
RUN apt-get update && apt-get install -y mariadb-server
COPY tools /var/www/
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /var/www/configscript.sh
ENTRYPOINT ["/var/www/configscript.sh"]
CMD [ "mysqld" ]