# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 02:46:59 by obouadel          #+#    #+#              #
#    Updated: 2023/06/01 16:01:57 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# makefile that runs the dockerfile and build the image and clean the container and fclean the image and the container

NAME = nginx
CONTAINER_NAME = nginx_container
VOLUME_NAME = wordpress_volume

all: build

build:
	- docker build -t $(NAME) .
	
run:
	- docker run -d --name $(CONTAINER_NAME) -p 80:80 -p 443:443 -v $(VOLUME_NAME):/var/www/html $(NAME)

clean:
	- docker rm $(CONTAINER_NAME)
	
fclean: clean
	- docker rmi $(NAME)

volclean:
	- rm -rf db_volume/*
remove:
	- docker stop $(docker ps -a -q)
	- docker rm $(docker ps -a -q)
	- docker rmi $(docker images -q)
	
re: fclean all