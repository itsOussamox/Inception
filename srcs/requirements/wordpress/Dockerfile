FROM debian:buster
COPY ./tools /var/
RUN chmod +x /var/wp-script.sh
RUN apt update
EXPOSE 9000
ENTRYPOINT ["/var/wp-script.sh"]
CMD ["/usr/sbin/php-fpm7.3", "-F"]