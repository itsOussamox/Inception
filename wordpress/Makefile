# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 02:46:59 by obouadel          #+#    #+#              #
#    Updated: 2023/05/31 13:58:07 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = wordpress
CONTAINER_NAME = wordpress_container
VOLUME_NAME = wordpress_volume

all: build run

build:
	- docker build -t $(NAME) .
	
exec:
	- docker exec -it $(CONTAINER_NAME) bash
	
run:
	- docker run --name $(CONTAINER_NAME) -p 443:443 -v $(VOLUME_NAME):/var/www/html $(NAME)

clean:
	- docker stop $(CONTAINER_NAME)
	- docker rm $(CONTAINER_NAME)
	
fclean: clean
	- docker rmi $(NAME)

remove:
	- docker stop $(docker ps -a -q)
	- docker rm $(docker ps -a -q)
	- docker rmi $(docker images -q)
	
re: fclean all