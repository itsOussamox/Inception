FROM debian:buster
COPY ./tools /var/
RUN chmod +x /var/wp-script.sh
RUN apt update
EXPOSE 9000
ENTRYPOINT ["/var/wp-script.sh"]
# do a while loop with bash to wait for the container
# CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
CMD ["bash", "-c", "while true; do sleep 1; done"]