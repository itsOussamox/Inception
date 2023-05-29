FROM debian:buster
RUN apt-get update && apt-get install -y mariadb-server
COPY tools /var/www/
RUN chmod +x /var/www/configscript.sh
ENTRYPOINT ["/var/www/configscript.sh"]
