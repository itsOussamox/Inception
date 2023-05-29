# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 02:46:59 by obouadel          #+#    #+#              #
#    Updated: 2023/04/16 22:09:42 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = wordpress
CONTAINER_NAME = wordpress_container

all: build

build:
	- docker build -t $(NAME) .
	
exec:
	- docker exec -it $(CONTAINER_NAME) bash
	
it:
	- docker run -it --name $(CONTAINER_NAME) -p 80:80 -p 443:443 $(NAME) bash
run:
	- docker run --name $(CONTAINER_NAME) -p 80:80 -p 443:443 $(NAME)

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