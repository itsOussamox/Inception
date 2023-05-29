# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/05 02:08:35 by obouadel          #+#    #+#              #
#    Updated: 2023/04/10 22:48:24 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl/server.crt /etc/nginx/server.crt
COPY ssl/server.key /etc/nginx/server.key
COPY tools/index.html /usr/share/nginx/html
COPY tools/test.php /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]