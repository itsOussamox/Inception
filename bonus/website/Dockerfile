FROM debian:buster
RUN apt-get update && apt-get install -y nginx
COPY conf/default.conf /etc/nginx/sites-enabled/default
COPY tool/index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]