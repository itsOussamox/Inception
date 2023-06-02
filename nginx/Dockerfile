# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/05 02:08:35 by obouadel          #+#    #+#              #
#    Updated: 2023/05/31 16:38:30 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl/server.crt /etc/nginx/server.crt
COPY ssl/server.key /etc/nginx/server.key
CMD ["nginx", "-g", "daemon off;"]