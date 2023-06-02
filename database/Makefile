# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: obouadel <obouadel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 02:53:14 by obouadel          #+#    #+#              #
#    Updated: 2023/05/29 14:50:47 by obouadel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = mariadb
CONTAINER_NAME = mariadb_container

all: build

build:
	- docker build -t $(NAME) .
	
run:
	- docker run -it -d --name $(CONTAINER_NAME) $(NAME)

exec:
	- docker exec -it $(CONTAINER_NAME) bash

clean:
	- docker rm $(CONTAINER_NAME)
	
fclean: clean
	- docker rmi $(NAME)

remove:
	- docker stop $(docker ps -a -q)
	- docker rm $(docker ps -a -q)
	- docker rmi $(docker images -q)

re: fclean all